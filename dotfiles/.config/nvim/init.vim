call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'scrooloose/nerdtree'
" CtrlP
"Plug 'ctrlpvim/ctrlp.vim'
" YouCompleteMe
"Plug 'Valloric/YouCompleteMe', {'do': 'python ./install.py --clang-completer --tern-completer'}
" Vim Gitgutter
Plug 'airblade/vim-gitgutter'
" Auto pair brackets, etc
Plug 'jiangmiao/auto-pairs'
" Vim Syntastic
"Plug 'vim-syntastic/syntastic'
" Vim Polyglot syntax highlighting
Plug 'sheerun/vim-polyglot'
" Vue component syntax highlighting
Plug 'posva/vim-vue'
" EditorConfig
Plug 'editorconfig/editorconfig-vim'
" One Dark colorscheme
Plug 'joshdick/onedark.vim'

" all of your plugins must be added before the following line
call plug#end()

" put your non-plugin stuff after this line

set timeoutlen=1000 ttimeoutlen=0

set encoding=utf-8
" Hide default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode
" Always show tabline
set showtabline=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set termguicolors
" Set font
set guifont=DejaVu\ Sans\
let g:Powerline_symbols = 'fancy'
" Show line number
set number
" Show ruler at column 80
set colorcolumn=80

" Keep lines above and below the cursor when scrolling
set scrolloff=8

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

set smartindent

" Syntax highlighting
set background=dark
let g:onedark_termcolors=256
silent! colorscheme onedark
" Highlight current line
set cursorline
" Clear search highlight with double Esc
nnoremap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>

" Highlight Vue Components syntax
" au BufRead,BufNewFile *.vue setfiletype html

" Remap pane navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Open NERDTree when vim starts with no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle NERDTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>
" Close NERDTree if it's the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Remap CtrlP invokes
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Diable autocomplete preview window
set completeopt-=preview
" Disable auto-pairs shortcuts
let g:AutoPairsShortcutToggle = ''
