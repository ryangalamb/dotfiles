"" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'flazz/vim-colorschemes'

Plug 'SirVer/ultisnips'

Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"" HTML5
Plug 'othree/html5.vim'

"" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'jason0x43/vim-js-indent'

"" SCSS
Plug 'cakebaker/scss-syntax.vim'

"" Vue
Plug 'posva/vim-vue'

"" Jinja
Plug 'Glench/Vim-Jinja2-Syntax'

"" Handlebars
"Plug 'mustache/vim-mustache-handlebars'

"" High Level Assembly
"Plug 'jmahler/hla.vim'

"" TypeScript
"Plug 'leafgarland/typescript-vim'

"" ngnix
"Plug 'chr4/nginx.vim'

"" Scala
"Plug 'derekwyatt/vim-scala'

"" Jenkinsfile
"Plug 'martinda/Jenkinsfile-vim-syntax'

"" NixOS
Plug 'LnL7/vim-nix'

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
" search and replace word under cursor
nnoremap <leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" TODO: find something you like better for this
"nnoremap <leader>k :grep! "\b<c-r><c-w>\b"<cr>:cw<cr>

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

"" Tab
nnoremap <m-1> 1gt
nnoremap <m-2> 2gt
nnoremap <m-3> 3gt
nnoremap <m-4> 4gt
nnoremap <m-5> 5gt
nnoremap <m-6> 6gt
nnoremap <m-7> 7gt
nnoremap <m-8> 8gt
nnoremap <m-9> 9gt

tnoremap <m-1> <c-\><c-n>1gt
tnoremap <m-2> <c-\><c-n>2gt
tnoremap <m-3> <c-\><c-n>3gt
tnoremap <m-4> <c-\><c-n>4gt
tnoremap <m-5> <c-\><c-n>5gt
tnoremap <m-6> <c-\><c-n>6gt
tnoremap <m-7> <c-\><c-n>7gt
tnoremap <m-8> <c-\><c-n>8gt
tnoremap <m-9> <c-\><c-n>9gt

"" Mode Switch Settings
nnoremap ; :
inoremap jk <esc>
inoremap kj <esc>

tnoremap <c-\> <c-\><c-n>
" in case I forget that this doesn't escape in non-terminal buffers
inoremap <c-\> <nop>
nnoremap <c-\> <nop>

"" Folding
nnoremap <leader>z za
autocmd FileType text setlocal foldmethod=indent
autocmd FileType markdown setlocal foldmethod=indent

"" Shortcuts (unabashed laziness)
nnoremap <c-l> ;
nnoremap <leader>w :w<cr>

" paste and yank from clipboard
nnoremap <leader>p "+p
nnoremap <leader>y "+y

vnoremap <leader>p "+p
vnoremap <leader>y "+y

nnoremap <leader>f :let @" = expand("%")<cr>


"" Buffer stuff
set hidden " to keep terminal buffers open in background
nnoremap <leader><leader> <c-^>

"" Registers and Macros
nnoremap Q @q

"" Display
set background=dark

autocmd ColorScheme * highlight LineNr ctermbg=None

autocmd ColorScheme * highlight ColorColumn ctermbg=237
autocmd ColorScheme * highlight Folded ctermbg=236

autocmd ColorScheme * highlight pythonBuiltin ctermfg=37

autocmd ColorScheme * highlight jsFuncCall cterm=bold ctermfg=37
autocmd ColorScheme * highlight jsClassFuncName cterm=bold ctermfg=37
autocmd ColorScheme * highlight jsThis ctermfg=148

" let g:PaperColor_Theme_Options = {
"       \   'theme': {
"       \     'default': {
"       \       'allow_bold': 1,
"       \       'allow_italic': 1,
"       \     }
"       \   },
"       \   'language': {
"       \     'python': {
"       \       'highlight_builtins' : 1
"       \     },
"       \     'c': {
"       \       'highlight_builtins' : 1
"       \     },
"       \     'cpp': {
"       \       'highlight_standard_library': 1
"       \     }
"       \   }
"       \ }

colorscheme PaperColor

set showmatch
set scrolloff=2

let &colorcolumn="80"

set textwidth=79

""" Reset syntax highlighting
" copy-pasted from https://vi.stackexchange.com/questions/2172/why-i-am-losing-syntax-highlighting-when-folding-code-within-a-script-tag
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

function! s:dump_syntax()
  let col = col(".")
  let line = line(".")
  let highlight_id = synID(line, col, 1)
  let transparent_id = synID(line, col, 0)
  let linked_id = synIDtrans(highlight_id)

  let highlight_str = synIDattr(highlight_id, "name")
            \ . "(" . synIDattr(highlight_id, "fg") . ")"

  let transparent_str = synIDattr(transparent_id, "name")
              \ . "(" . synIDattr(transparent_id, "fg") . ")"

  let linked_str = synIDattr(linked_id, "name")
         \ . "(" . synIDattr(linked_id, "fg") . ")"

  return  "highlight   = " . highlight_str . "\n"
      \ . "transparent = " . transparent_str . "\n"
      \ . "linked      = " . linked_str
endfunction

nnoremap <leader>? :echo <SID>dump_syntax()<CR>

"" NERDTree
map <leader>m :NERDTreeToggle<cr>

"" Ruby
au BufRead,BufNewFile {Gemfile,Vagrantfile,Berksfile} set ft=ruby
" TODO: ruby syntax highlighting fix

"" JavaScript
au BufRead,BufNewFile {.babelrc} set ft=json

"" UltiSnips
nnoremap <leader>u :UltiSnipsEdit<cr>
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger = "<c-f>"

" https://github.com/SirVer/ultisnips/issues/593
augroup ultisnips_no_auto_expansion
    au!
    au VimEnter * au! UltiSnips_AutoTrigger
augroup END


"" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 0
" keep ultisnips on top
call deoplete#custom#source('ultisnips', 'rank', 1000)
" don't autocomplete the first parens
call deoplete#custom#source('_', 'converters', ['converter_remove_paren'])
" wait a bit before trying completions
call deoplete#custom#option('auto_complete_delay', 100)

" deoplete suggested tab mapping
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
" and get shift-tab working too!
inoremap <silent><expr> <S-TAB>
\ pumvisible() ? "\<C-p>" :
\ <SID>check_back_space() ? "\<S-TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}


"" Fugitive
" Don't keep fugitive buffers open after hiding them
au BufReadPost fugitive://* set bufhidden=delete

" CSS/SCSS
au! FileType vue,html,css,scss,less setl iskeyword+=-

let g:vue_disable_pre_processors=1

let g:airline_powerline_fonts = 1
