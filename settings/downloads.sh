# Downloads Vim Plug Bundle manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone bundle repositories with Vim Plug and install them
vim -E -c PlugInstall -c qall

# Download Tmux Plugin Manager
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Download and install Tmux plugins
~/.tmux/plugins/tpm/bin/install_plugins
