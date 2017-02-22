# Downloads Vim Plug bundle manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Remove unused Neovim and Neovim plugins (to remain idempotent)
nvim -E -c PlugClean! -c qall

# Clone bundle repositories with Vim Plug and install them
nvim -E -c PlugInstall -c qall
