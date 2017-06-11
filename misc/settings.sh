# Disable mouse acceleration
sudo sh -c "echo 'Section \"InputClass\"' > /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    Identifier \"mouse\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    MatchIsPointer \"on\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    Option \"AccelerationProfile\" \"-1\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo '    Option \"AccelerationScheme\" \"none\"' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
sudo sh -c "echo 'EndSection' >> /usr/share/X11/xorg.conf.d/90-mouse.conf"
