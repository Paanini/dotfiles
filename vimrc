colorscheme jellybeans
set nocompatible
filetype off

"Load all plugins installed via Pathogen
execute pathogen#infect()
execute pathogen#helptags()

"Recognize the filetype based on extension/file contents, load appropriate
"plugins and indent methods
filetype plugin indent on

"Syntax Highlighting
syntax on

"Enable Line Numbers
set number

"Automatically follow the current indentation level on <CR>
set autoindent

"Modify backspace behaviour        
set backspace=indent,eol,start

"Search without pressing <CR>
set incsearch

"Highlight matching braces
set showmatch

"Set Vim to fold according to hte indent level (Python specific)
set foldmethod=indent
set foldnestmax=10
set foldlevel=99
set ignorecase
set smartcase
set hlsearch
set showcmd

set clipboard=unnamedplus
set smarttab
set smartindent
set shiftwidth=4

"***********Key Mappings****************

"Map the default leader key (\) to ,
let mapleader = ','

"Quit Mappings (coz :wq is too mainstream. Also hard to reach)
nmap <leader>q :q<CR>
nmap <leader>w :wq<CR>
imap <C-s> :w<CR>
nmap <F4> :q<CR>

"Navigating in Split Windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nmap <F3> :vsp<CR>
set splitbelow
set splitright
"Toggle Line Numbers with F2
nmap <F2> :set number!<CR>
map <C-t> :tabnew<CR>
map <C-tab> gt
"*********Python-Mode*****************
"Following are Python-mode settings
let g:pymode_run_key = '<F5>'

"Disable Python-Mode's default Syntax Highlighting
let g:pymode_syntax = 0
let g:pymode_lint_checker = "pyflakes,mccabe"
let g:pymode_rope = 0
let g:pymode_folding=0
"**********Vim-Powerline**************
let g:Powerline_symbols = 'fancy'
set laststatus=2
set encoding=utf-8
set t_Co=256

"*********NERDtree plugin*************
"autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <leader>m :NERDTreeToggle<CR>

"*********SuperTab*******************
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set guioptions-=T
set guifont=Monaco\ for\ Powerline\ 11

"*******************JEDI Autocomplete****************
"let g:jedi#related_names_command = "<leader>q"
let g:jedi#pydoc = "L"

"********************Avoid closing and opening .vimrc for changes**************
autocmd! bufwritepost .vimrc source %
