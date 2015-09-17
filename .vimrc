""
" My personal vimrc. I started with pthrasher's beginner vim settings (pthrasher/beginner.vimrc.vim)
" and then bled all over it for a couple months. What I have here is mostly
" stabilized to my liking now, but I still go back every now and then to add
" things or leave my thoughts on things I've done with this. I try to keep it
" well commented, because I sometimes direct people here to help them get
" ideas for their vimrc. (Real talk: I mostly keep it well commented because 
" I'll forget what everything does if I don't.)
" 
" A note to anyone looking at this to help them get started with vim, I'd
" recommend against implementing things willy nilly. My personal thought on
" vim is that it's best learned gradually, so in most cases, it's best to wait
" until you feel the need for something before you start downloading plugins
" that someone recommends to you or implementing things you hear people raving
" about. One of the first things I did when I started using vim was install a 
" bunch of plugins that I read about in some blogs. Of course, learning to use
" a new plugin takes a bit of time, and learning a bunch of plugins only makes
" the already precipitous learning curve of vim absolutely unbearable. I ended
" up scrapping everything and starting from scratch, making sure I understood
" everything. 
"
" Also, if you're using vim from the terminal, you can use control-z to
" suspend vim and drop back into the command line and then use the command fg
" to resume vim. Insanely useful if you're comfortable with the command line.
""

set nocompatible              " if we wanted to use vi, we would use vi.
filetype off                  " not required for Plug, but other plugin
                              " managers need it.

" set the runtime path to include Plug and initialize
call plug#begin('~/.vim/plugged')
" RETROSPECT: I've tried a few different plugin managers, but Plug is hands
" down the best one I've come across.

" If you find you are having trouble with HTML brackets and delimiters,
"   use this one:
Plug 'tpope/vim-surround'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" RETROSPECT: When I first installed this, I read that there is a file
" explorer native to vim, and it was generally preferable to use that because
" NerdTree can cause vim's startup to be sluggish. While this is true on some
" machines, Plug allows me to only load the plugin when I call for it, so it's
" not a problem anymore. Plus the native file explorer looks like crap whereas
" NerdTree is oh-so-pretty.

" Syntastic
Plug 'scrooloose/syntastic' ", {'on': 'SyntasticCheck'}

" Github plugin
Plug 'tpope/vim-fugitive'

" A shitload of color schemes
Plug 'flazz/vim-colorschemes'

" CtrlP file search plugin
Plug 'kien/ctrlp.vim' " LEARN HOW TO HARNESS ITS GLORY
" RETROSPECT: I thought this would be useful for me, but I hardly ever feel 
" the need for it. I might remove this until the need for this becomes an
" actual thing.

" Code snippets. Pretty useful
Plug 'SirVer/ultisnips' 
" RETROSPECT: INSANELY USEFUL. The snippets are easy to define and
" ridiculously flexible. It's well documented, and you can start getting
" benefits from it with very little effort. But if you know Python and are
" willing to experiment a bit, there's some insane stuff you can do with it.
" 
" I also use snippets to help me remember more obscure syntax/features of
" different languages/frameworks. I've found that snippets are a wonderful way
" of taking notes while learning new things.
"
" For beginners, I would recommend against using a library of snippets.
" My personal experience has been that snippets are best defined as needed,
" and a library basically gives you way too much to learn, and it's hard to
" remember someone else's triggers. I ended up spending about as much time
" trying to remember what the trigger was as I would have just typing out the
" code by hand.

" Ruby plugin
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

" Ruby end fixer
Plug 'tpope/vim-endwise', { 'for': 'ruby' }

" Delimiter fixer
Plug 'jiangmiao/auto-pairs'

" Javascript plugin
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'wookiehangover/jshint.vim', { 'for': 'javascript' }

" Autocompletion
Plug 'Valloric/YouCompleteMe'

" SuperTab
Plug 'ervandew/supertab'

" Haskell
Plug 'lukerandall/haskellmode-vim', { 'for': 'haskell' }
Plug 'raichoo/haskell-vim', { 'for': 'haskell' }

" React
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

" vim less
Plug 'groenewege/vim-less', { 'for': 'less' }

" Python!
Plug 'klen/python-mode', { 'for': 'python' }

" Emmet
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'less']  }

" Elm language support
Plug 'elmcast/elm-vim', { 'for': 'elm' }

" All of your Plugins must be added before the following line
call plug#end()           " required
filetype on
filetype plugin on        " Not needed for Plug, but I'm still keeping it.
filetype indent on        " Same story here.

syntax on " Syntax highlighting (also handled by Plug)

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab   " use spaces instead of tabs
set smarttab    " lets tab key insert 'tab stops', and bksp deletes tabs
set shiftround  " tab / shifting moves to closest tabstop
set autoindent  " match indents on new lines
set smartindent " intelligently dedent/ indent new lines based on rules

" Use VCS, not this shlock
set nobackup
set nowritebackup
set noswapfile

" Show line numbers
set relativenumber
" RETROSPECT: This is lovely. It starts the numbering at zero wherever the
" cursor is and follows it around. Good for manuevering with precision and
" performing operations on multiple lines without having to go into visual
" mode or count the lines. (For example: d5k)

" Make search more 'sane'
set ignorecase " case insensitive search
set smartcase " if there are uppercase letters, become case-sensitive
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the 'g'(global) flag by default

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" allow the cursor to go anywhere in visual block mode
set virtualedit+=block

" leader is a key that allows you to have your own 'namespace' of keybindings.
" You'll see it a lot as <leader>
let mapleader = "\<space>"
" RETROSPECT: I've tried a few mapleaders, and space is by far the most
" ergonomic.

" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :
" RETROSPECT: If you don't do this, you are a crazy person.

" make saving one less keystroke
nnoremap <leader>w :w<enter>
" because I am exactly that lazy

" so we don't have to reach for escape to leave insert mode
inoremap jf <esc>
inoremap jk <esc>
" RETROSPECT: Another you'd be crazy not to implement. Reaching for escape
" every two seconds sucks. I use jf in most cases and only added jk because I
" have vim bindings in my web browser and type jkjkjk to see which window has
" focus, and moving the cursor up and down is a lot more eye catching (and
" less potentially damaging) than adding nonsense text if I accidentally left
" it in insert mode.

" create new vsplit and switch to it. 
noremap <leader>v <C-w>v
" RETROSPECT: this is lovely.

" new hsplit
noremap <leader>s <C-w>s
" RETROSPECT: rarely use this. Still nice though

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" RETROSPECT: crazy useful. I would never use splits if I didn't have this.

" Search and replace word under cursor
nnoremap <leader>8 :%s/\<<C-r><C-w>\>//g<Left><Left>
" RETROSPECT: This is really neat! I totally forgot I put this in here. I need
" to use this more often!

" Clear match highlighting
noremap <leader>, :noh<cr>:call clearmatches()<cr>
" RETROSPECT: I use this more than i ever expected I would.

" Quick buffer switching
nnoremap <leader><leader> <c-^>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :bd<cr>
" RETROSPECT: Crazy useful when working with multiple files.

" AESTHETICS
set t_Co=256
set background=dark
colorscheme vibrantink
"colorscheme vividchalk
"colorscheme molokai
highlight ColorColumn ctermbg=237
" NOTE: This changes the colorcolumn to gray after the colorscheme is defined.
" I've found that many colorschemes have colorcolumn colors that give me eye
" cancer.

" highlights the 80th column and then all of the columns past 120
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")

" Code folding!
set foldmethod=syntax
set foldnestmax=10
set foldlevel=1

" toggle current fold
nnoremap <c-a> za

" folding can be annoying sometimes
nnoremap <leader>z :set nofoldenable<enter>
nnoremap <leader>Z :set foldenable<enter>


""" PLUGIN SETTINGS

"" CTRLP

let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

"" SYNTASTIC

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic needs to calm the fuck down when I'm trying to get shit done.
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []  }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" NOTE: it looks like you don't have to use <s-KEY> for capital letters when
" remapping 

"" NERDTREE

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <leader>m :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"" Haskell mode

au Bufenter *.hs compiler ghc
let g:haddock_browser = "/usr/bin/luakit"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:BASH_Ctrl_j = 'off'
let g:BASH_Ctrl_k = 'off'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

let g:UltiSnipsEditSplit="vertical"

nnoremap <leader>u :UltiSnipsEdit<enter>

"" JSX syntax for .js files
let g:jsx_ext_required=0 " Allow JSX in normal JS files


"" JSHint
let JSHintUpdateWriteOnly=1
let g:JSHintHighlightErrorLine=0


"" vim-javascript
let javascript_enable_domhtmlcss=1
