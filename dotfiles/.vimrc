" be iMproved, required
set nocompatible

call plug#begin('~/.vim/plugged')

" Powerline
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" NERDTree
Plug 'scrooloose/nerdtree'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe', {'do': 'python3 ./install.py --clang-completer --tern-completer'}

" Auto pair brackets, etc
Plug 'jiangmiao/auto-pairs'

" Vim Polyglot syntax highlighting
Plug 'sheerun/vim-polyglot'

" One Dark colorscheme
Plug 'joshdick/onedark.vim'

" all of your plugins must be added before the following line

" required
call plug#end()

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

" Diable autocomplete preview window
set completeopt-=preview
" Disable auto-pairs shortcuts
let g:AutoPairsShortcutToggle = ''

" Make YouCompleteMe work
let g:ycm_server_python_interpreter = '/usr/bin/python3'
