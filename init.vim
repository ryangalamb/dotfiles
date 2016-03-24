" TODO: Split off a vim-specific version of this.

"" Plugins
call plug#begin('~/.vim/plugged') " TODO: Give this the proper neovim path

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'flazz/vim-colorschemes'

Plug 'SirVer/ultisnips'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Valloric/YouCompleteMe'

"" ctags
"Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'

"" git
Plug 'tpope/vim-fugitive'

"" JavaScript
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }

"" Handlebars
Plug 'mustache/vim-mustache-handlebars'

"" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"" PlantUML
Plug 'aklt/plantuml-syntax', { 'for': 'plantuml' }

" install these when you know you'll actually use them
" Plug 'scrooloose/syntastic'
" Plug 'tpope/vim-projectionist'

call plug#end()

filetype on
syntax on
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
set mouse=c

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
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

inoremap <m-h> <esc><c-w>h
inoremap <m-j> <esc><c-w>j
inoremap <m-k> <esc><c-w>k
inoremap <m-l> <esc><c-w>l

tnoremap <m-h> <c-\><c-n><c-w>h
tnoremap <m-j> <c-\><c-n><c-w>j
tnoremap <m-k> <c-\><c-n><c-w>k
tnoremap <m-l> <c-\><c-n><c-w>l

nnoremap <leader>v <c-w>v
nnoremap <leader>s <c-w>s

nnoremap <leader>+ 10<c-w>+
nnoremap <leader>- 10<c-w>-

"" Tab Settings
nnoremap <m-i> gt
nnoremap <m-b> gT

inoremap <m-i> <esc>gt
inoremap <m-b> <esc>gT

tnoremap <m-i> <c-\><c-n>gt
tnoremap <m-b> <c-\><c-n>gT

nnoremap <m-t> :tabe term://.//zsh<cr>

"" Mode Switch Settings
nnoremap ; :
inoremap jf <esc>
inoremap jk <esc>
inoremap kj <esc>

tnoremap <c-\> <c-\><c-n>

"" Folding
nnoremap <leader>z za
autocmd FileType text setlocal foldmethod=indent

"" Shortcuts (unabashed laziness)
nnoremap <leader>w :w<cr>
nnoremap <leader>e :e ~/
nnoremap <F5> :make<cr>

"" Buffer stuff
set hidden " to keep terminal buffers open in background
nnoremap <leader><leader> <c-^>

"" Registers and Macros
nnoremap Q @q

"" Tags
nnoremap <F8> :TagbarToggle<cr>
set tags=./tags;

"" Display
set background=dark
colorscheme molokai
highlight ColorColumn ctermbg=237

set showmatch
set scrolloff=2

let &colorcolumn="81,".join(range(121,999),",")

set textwidth=80

"" NERDTree
map <leader>m :NERDTreeToggle<cr>

"" UltiSnips
nnoremap <leader>u :UltiSnipsEdit<cr>
let g:UltiSnipsEditSplit = "vertical"

let g:UltiSnipsExpandTrigger = "<c-f>"

"" YouCompleteMe
let g:ycm_collect_identifiers_from_tag_files = 1

"" Fugitive
" Don't keep fugitive buffers open after hiding them
au bufReadPost fugitive://* set bufhidden=delete
nnoremap <leader>b :Gblame<cr>
