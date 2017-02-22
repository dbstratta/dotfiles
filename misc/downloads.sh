# Downloads VimPlug bundle manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Remove unused Neovim plugins (to remain idempotent)
nvim -E -c PlugClean! -c qall

# Clone bundle repositories with VimPlug and install them
nvim -E -c PlugInstall -c qall
