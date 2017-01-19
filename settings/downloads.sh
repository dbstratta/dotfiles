# Downloads Vim Plug bundle manager for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download Vim Plug bundle manager for Neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Remove unused Vim and Neovim plugins (to remain idempotent)
vim -E -c PlugClean! -c qall
# nvim -E -c PlugClean! -c qall

# Clone bundle repositories with Vim Plug and install them
vim -E -c PlugInstall -c qall
# nvim -E -c PlugInstall -c qall

# Download Tmux Plugin Manager
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Download and install Tmux plugins
~/.tmux/plugins/tpm/bin/install_plugins
