" be iMproved, required
set nocompatible

" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'

" all of your plugins must be added before the following line

" required
call vundle#end()

" required
filetype plugin indent on

" put your non-plugin stuff after this line

