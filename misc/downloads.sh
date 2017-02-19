# Downloads Vim Plug bundle manager for Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Remove unused Vim and Neovim plugins (to remain idempotent)
vim -E -c PlugClean! -c qall

# Clone bundle repositories with Vim Plug and install them
vim -E -c PlugInstall -c qall
