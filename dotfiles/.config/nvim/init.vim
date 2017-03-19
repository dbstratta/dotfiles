" ================================= Plugins =================================

call plug#begin()

" Compilation and linting
Plug 'neomake/neomake'
Plug 'benjie/neomake-local-eslint.vim'

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
Plug 'vim-airline/vim-airline-themes'
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

" ================================== Core ===================================

set timeoutlen=500 ttimeoutlen=0
" Set encoding
set encoding=utf-8
" Hide default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode
" Always show tabline
set showtabline=2
" Use true colors
set termguicolors
" Change cursor shape based on current mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2
" Show line number
set number
" Highlight current line
set cursorline
" Show ruler at column 80
set colorcolumn=80
" Keep lines above and below the cursor when scrolling
set scrolloff=8
" Changes width of TAB character
set tabstop=2
" Number of spaces of each step of autoindent
set shiftwidth=2
" Don't use actual tab characters
set expandtab
" Affects what happens whith <TAB> and <BS> keys with indentation
set softtabstop=2
set smartindent
" Diable autocomplete preview window
set completeopt-=preview

" =============================== Indentation ===============================

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" =============================== Keybindings ===============================

" Map space as leader
map <Space> <leader>

" FZF keybindings
nnoremap <leader>; :FZF<CR>
nnoremap <leader>: :Ag<CR>

" Remap saving and quitting
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Remap pane navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Clear search highlight with double Esc
nnoremap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>

" FZF keybindings
nnoremap <leader>; :FZF<CR>

" ============================= Plugin settings =============================

" Colorscheme settings
set background=dark
let g:onedark_terminal_italics = 1
silent! colorscheme onedark

" Airline settings
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='tomorrow'

" Neomake settings
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['pylint']

" Deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang/'

" FZF settings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'split',
  \ 'ctrl-v': 'vsplit' }

" AutoPairs settings
let g:AutoPairsShortcutToggle = ''
