# Downloads Vim Plug Bundle manager for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Downloads Vim Plug Bundle Managar for Neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone bundle repositories with Vim Plug and install them
vim -E -c PlugInstall -c qall
nvim -E -c PlugInstall -c qall

# Download Tmux Plugin Manager
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Download and install Tmux plugins
~/.tmux/plugins/tpm/bin/install_plugins
