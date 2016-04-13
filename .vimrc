" Neovim defaults from noahfrederick/vim-neovim-defaults
filetype plugin indent on
syntax on

set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set display=lastline
set encoding=utf-8
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set laststatus=2
set nrformats=hex
set sessionoptions-=options
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set viminfo+=!
set wildmenu
" End of neovim defaults


let mapleader = "\<space>"

"" Tab Settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent

"" Backup Settings
set nobackup
set nowritebackup
set noswapfile

"" Movement Settings
set relativenumber

"" Search Settings
set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault

noremap <leader>, :noh<cr>:call clearmatches()<cr>

nnoremap / /\v
vnoremap / /\v

nnoremap <c-l> ;

"" Window Settings
nnoremap <leader>v <c-w>v
nnoremap <leader>s <c-w>s

"" Mode Switch Settings
nnoremap ; :
inoremap jf <esc>
inoremap jk <esc>
inoremap kj <esc>

"" Folding
nnoremap <leader>z za
autocmd FileType text setlocal foldmethod=indent

"" Shortcuts (unabashed laziness)
nnoremap <leader>w :w<cr>
nnoremap <leader>e :e ~/

"" Buffer stuff
nnoremap <leader><leader> <c-^>

"" Registers and Macros
nnoremap Q @q

"" Display
set background=dark
colorscheme desert
highlight ColorColumn ctermbg=237

set showmatch
set scrolloff=2

let &colorcolumn="81,".join(range(121,999),",")

set textwidth=80
