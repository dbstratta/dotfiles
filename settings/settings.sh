#!/usr/bin/bash

# Make a symlink from nodejs to node
sudo ln -sfv "$(which nodejs)" /usr/bin/node

# Disable mouse acceleration
sudo sh -c "echo 'Section \"InputClass\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    Identifier \"mouse\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    MatchIsPointer \"on\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    Option \"AccelerationProfile\" \"-1\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    Option \"AccelerationScheme\" \"none\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo 'EndSection' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"

# Set GTK and Icon theme
gsettings set org.gnome.desktop.interface gtk-theme 'Adapta'
gsettings set org.gnome.desktop.wm.preferences theme 'Adapta'
gsettings set org.gnome.desktop.interface icon-theme 'Paper'

# Set Unity Launcher favorites
gsettings set com.canonical.Unity.Launcher favorites '["application://org.gnome.Nautilus.desktop", "application://google-chrome.desktop", "application://atom.desktop"]'

# Disable show HUD with Alt
gsettings set org.compiz.integrated show-hud '[""]'

# Set terminal font
gsettings set org.gnome.desktop.interface monospace-font-name 'Roboto Mono for Powerline 11'

# Hide keyboard icon in top bar
gsettings set com.canonical.indicator.keyboard visible false

# Show the menu in window's title bar
gsettings set com.canonical.Unity integrated-menus true
# gsettings set org.gnome.desktop.interface font-name 'Roboto 11'
# gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font true

# Build YouCompleteMe
python3 ~/.vim/plugged/YouCompleteMe/install.py \
  --clang-completer --tern-completer
