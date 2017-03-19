call plug#begin()

Plug 'scrooloose/nerdtree'

" Compilation and linting
Plug 'neomake/neomake'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'
Plug 'zchee/deoplete-clang'


" Git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Motions and general text editing
Plug 'jiangmiao/auto-pairs'

" Syntax and language integration
Plug 'sheerun/vim-polyglot'

" Code consistency
Plug 'editorconfig/editorconfig-vim'

" Colorschemes
Plug 'joshdick/onedark.vim'

call plug#end()

set timeoutlen=1000 ttimeoutlen=0

set encoding=utf-8
" Hide default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode
" Always show tabline
set showtabline=2
" Use true colors
set termguicolors
" Let Airline use Powerline fonts
let g:airline_powerline_fonts = 1
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
let g:onedark_terminal_italics = 1
silent! colorscheme onedark
" Highlight current line
set cursorline
" Clear search highlight with double Esc
nnoremap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>

" Set the Airline theme
let g:airline_theme='onedark'

" Change cursor shape based on current mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

" Deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang/'

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

" Diable autocomplete preview window
set completeopt-=preview
" Disable auto-pairs shortcuts
let g:AutoPairsShortcutToggle = ''
