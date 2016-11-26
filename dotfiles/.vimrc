" be iMproved, required
set nocompatible

" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Powerline
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" NERDTree
Plugin 'scrooloose/nerdtree'

" all of your plugins must be added before the following line

" required
call vundle#end()

" required
filetype plugin indent on

" put your non-plugin stuff after this line

set timeoutlen=1000 ttimeoutlen=0


" Always show statusline
set laststatus=2
" Hide default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode
" Always show tabline
set showtabline=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
