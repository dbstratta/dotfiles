# Downloads Vim Plug Bundle manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone bundle repositories with Vim Plug and install them
vim -E -c PlugInstall -c qall
