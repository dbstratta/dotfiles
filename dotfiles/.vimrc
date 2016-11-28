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

" Auto pair brackets, etc
Plugin 'jiangmiao/auto-pairs'

" Vim Polyglot syntax highlighting
Plugin 'sheerun/vim-polyglot'

" One Dark colorscheme
Plugin 'joshdick/onedark.vim'

" all of your plugins must be added before the following line

" required
call vundle#end()

" required
filetype plugin indent on

" put your non-plugin stuff after this line

set timeoutlen=1000 ttimeoutlen=0

set encoding=utf-8
" Always show statusline
set laststatus=2
" Hide default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode
" Always show tabline
set showtabline=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
" Set font
set guifont=Roboto\ Mono\ for\ Powerline
let g:Powerline_symbols = 'fancy'
" Show line number
set number
" Show ruler at column 80
set colorcolumn=80

" Indentation stuff
" Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" Changes width of TAB character
set tabstop=2
" Number of spaces of each step of autoindent
set shiftwidth=2
" Don't use actual tab characters
set expandtab
" Affects what happens whith <TAB> and <BS> keys with indentation
set softtabstop=2

set autoindent
set smartindent

" Syntax highlighting
syntax on
set background=dark
let g:onedark_termcolors=256
colorscheme onedark

" Disable auto-pairs shortcuts
let g:AutoPairsShortcutToggle = ''
