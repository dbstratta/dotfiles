#!/usr/bin/env python3

"""
Bing's wallpaper of the day background setter

Hits Bing's wallpaper API and compares the wallpaper of the day
with the OS's current one.

If they are the same, the script does nothing.

If they are different, it downloads the new wallpaper and sets it,
then remove the old one.

Usage:
======
(1) Put this script in your startup applications.
"""

import os
import requests

# Perform a GET to Bing's wallpapers API
url = 'https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US'
response = requests.get(url)

data = response.json()
image_url_pathname = data['images'][0]['url']
image_filename = image_url_pathname.split('/')[-1]

local_images_dir = '{}/Pictures/wallpaper/'.format(os.path.expanduser('~'))
local_images = os.listdir(local_images_dir)

# Check if the current background is not the same as Bing's
if not local_images or local_images[0] != image_filename:
    image_url = 'https://www.bing.com{}'.format(image_url_pathname)

    # Perform a GET to the image URL
    image_content = requests.get(image_url).content

    with open(local_images_dir + image_filename, 'wb') as image_file:
        image_file.write(image_content)

    gsettings_command_str = (
        '/usr/bin/gsettings set org.gnome.desktop.background picture-uri ' +
        '"file://' + local_images_dir + image_filename + '"'
    )
    os.system(gsettings_command_str)
    print('Success!\n')

    # Remove old image if it exists
    if local_images:
        os.remove(local_images[0])
else:
    print('You already have the latest Bing wallpaper!\n')
