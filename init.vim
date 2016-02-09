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

"" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

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

noremap <leader>, :noh<CR>:call clearmatches()<CR>

nnoremap / /\v
vnoremap / /\v

nnoremap <C-L> ;

"" Window Settings
" These characters are alt + hjkl on my systems
nnoremap è <C-W>h
nnoremap ê <C-W>j
nnoremap ë <C-W>k
nnoremap ì <C-W>l

inoremap è <ESC><C-W>h
inoremap ê <ESC><C-W>j
inoremap ë <ESC><C-W>k
inoremap ì <ESC><C-W>l

tnoremap è <C-\><C-N><C-W>h
tnoremap ê <C-\><C-N><C-W>j
tnoremap ë <C-\><C-N><C-W>k
tnoremap ì <C-\><C-N><C-W>l

nnoremap <leader>v <C-W>v
nnoremap <leader>s <C-W>s

nnoremap <leader>+ 10<C-W>+
nnoremap <leader>- 10<C-W>-

"" Tab Settings
" alt + i, alt + b
nnoremap é gt
nnoremap â gT

inoremap é <ESC>gt
inoremap â <ESC>gT

tnoremap é <C-\><C-N>gt
tnoremap â <C-\><C-N>gT

" alt + t
nnoremap ô :tabe term://.//zsh<CR>

"" Mode Switch Settings
nnoremap ; :
inoremap jf <ESC>
inoremap jk <ESC>
inoremap kj <ESC>

tnoremap <C-\> <C-\><C-N>
tnoremap » <C-\><C-N>

"" Shortcuts (unabashed laziness)
nnoremap <leader>w :w<CR>
nnoremap <leader>e :e ~/

"" Buffer stuff
set hidden " to keep terminal buffers open in background
nnoremap <leader><leader> <C-^>

"" Registers and Macros
nnoremap Q @q

"" Tags
nnoremap <F8> :TagbarToggle<CR>
set tags=./tags;

"" Display
set background=dark
colorscheme molokai
highlight ColorColumn ctermbg=237

set showmatch
set scrolloff=2

let &colorcolumn="81,".join(range(121,999),",")

"" NERDTree
map <leader>m :NERDTreeToggle<CR>

"" UltiSnips
nnoremap <leader>u :UltiSnipsEdit<CR>
let g:UltiSnipsEditSplit = "vertical"

let g:UltiSnipsExpandTrigger = "<C-J>"

"" YouCompleteMe
let g:ycm_collect_identifiers_from_tag_files = 1

"" Fugitive
" Don't keep fugitive buffers open after hiding them
au bufReadPost fugitive://* set bufhidden=delete
nnoremap <leader>b :Gblame<CR>
