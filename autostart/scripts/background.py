import os
import requests
import json

# Perform a GET to Bing's wallpapers API
url = 'https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US'
response = requests.get(url)

data = json.loads(response.text)
image_url_pathname = data['images'][0]['url']
image_filename = image_url_pathname[16:]

local_images_dir = os.path.expanduser('~') + '/Pictures/wallpaper/'
local_images = os.listdir(local_images_dir)

# Check if the current background is not the same as Bing's
if not local_images or (local_images and (local_images[0] != image_filename)):
    image_url = 'https://www.bing.com' + image_url_pathname

    # Perform a GET to the image URL
    image = requests.get(image_url).content

    with open(local_images_dir + image_filename, 'wb') as handler:
        handler.write(image)

    gsettings_command_str = (
        '/usr/bin/gsettings set org.gnome.desktop.background picture-uri ' +
        '"file://' + local_images_dir + image_filename + '"'
    )
    os.system(gsettings_command_str)

    # Remove old image if it exists
    if local_images:
        os.remove(local_images[0])
