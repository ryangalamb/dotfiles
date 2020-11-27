" vim:fileencoding=utf-8:foldmethod=marker

"" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'flazz/vim-colorschemes'

Plug 'SirVer/ultisnips'

" Plug 'jiangmiao/auto-pairs'

Plug 'tpope/vim-surround'

Plug 'rbong/vim-crystalline'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Language Server Protocol support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" deoplete conflicts with CoC
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'ap/vim-css-color'

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

"" Mako
Plug 'sophacles/vim-bundle-mako'

"" Python
" Plug 'vim-python/python-syntax'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'vim-scripts/indentpython.vim'

"" Handlebars
"Plug 'mustache/vim-mustache-handlebars'

"" High Level Assembly
"Plug 'jmahler/hla.vim'

"" TypeScript
Plug 'leafgarland/typescript-vim'

"" ngnix
Plug 'chr4/nginx.vim'

"" Scala
"Plug 'derekwyatt/vim-scala'

"" Jenkinsfile
"Plug 'martinda/Jenkinsfile-vim-syntax'

"" NixOS
Plug 'LnL7/vim-nix'

"" YANG
Plug 'nathanalderson/yang.vim'

"" C++
Plug 'bfrg/vim-cpp-modern'

call plug#end()
"" }}}

"" Basics {{{
filetype on
syntax on
let mapleader = "\<space>"
"" }}}

"" Tab Settings {{{
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent
"" }}}

"" Backup Settings {{{
set nobackup
set nowritebackup
set noswapfile
"" }}}

"" Movement Settings {{{
set relativenumber
set mouse=""
"" }}}

"" Search Settings {{{
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
"
"}}}

"" Window Settings {{{
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

inoremap <m-h> <esc><c-w>h
inoremap <m-j> <esc><c-w>j
inoremap <m-k> <esc><c-w>k
inoremap <m-l> <esc><c-w>l

" HACK: lazyredraw deosn't get rid of the '-- TERMINAL --' status, so we have
"       to echo it away ourselves. (We could also redraw, but that causes the
"       redraw command to flash on the prompt)
" tnoremap <m-h> <c-\><c-n><c-w>h:echo '' <cr>
" tnoremap <m-j> <c-\><c-n><c-w>j:echo '' <cr>
" tnoremap <m-k> <c-\><c-n><c-w>k:echo '' <cr>
" tnoremap <m-l> <c-\><c-n><c-w>l:echo '' <cr>
tnoremap <m-h> <c-\><c-n><c-w>h
tnoremap <m-j> <c-\><c-n><c-w>j
tnoremap <m-k> <c-\><c-n><c-w>k
tnoremap <m-l> <c-\><c-n><c-w>l

nnoremap <leader>v <c-w>v
nnoremap <leader>s <c-w>s

nnoremap <leader>+ 10<c-w>+
nnoremap <leader>- 10<c-w>-
" }}}

"" Tab Settings {{{
nnoremap <m-i> gt
nnoremap <m-b> gT

inoremap <m-i> <esc>gt
inoremap <m-b> <esc>gT

tnoremap <m-i> <c-\><c-n>gt:echo '' <cr>
tnoremap <m-b> <c-\><c-n>gT:echo '' <cr>

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

tnoremap <m-1> <c-\><c-n>1gt:echo '' <cr>
tnoremap <m-2> <c-\><c-n>2gt:echo '' <cr>
tnoremap <m-3> <c-\><c-n>3gt:echo '' <cr>
tnoremap <m-4> <c-\><c-n>4gt:echo '' <cr>
tnoremap <m-5> <c-\><c-n>5gt:echo '' <cr>
tnoremap <m-6> <c-\><c-n>6gt:echo '' <cr>
tnoremap <m-7> <c-\><c-n>7gt:echo '' <cr>
tnoremap <m-8> <c-\><c-n>8gt:echo '' <cr>
tnoremap <m-9> <c-\><c-n>9gt:echo '' <cr>
" }}}

"" Mode Switch Settings {{{
nnoremap ; :
inoremap jk <esc>
inoremap kj <esc>

tnoremap <c-\> <c-\><c-n>
" in case I forget that this doesn't escape in non-terminal buffers
inoremap <c-\> <nop>
nnoremap <c-\> <nop>
" }}}

"" Folding {{{
nnoremap <leader>z za
autocmd FileType text setlocal foldmethod=indent
autocmd FileType markdown setlocal foldmethod=indent
" }}}

"" Shortcuts (unabashed laziness) {{{
nnoremap <c-l> ;
nnoremap <leader>w :w<cr>
" }}}

" paste and yank from clipboard {{{
nnoremap <leader>p "+p
nnoremap <leader>y "+y

vnoremap <leader>p "+p
vnoremap <leader>y "+y

nnoremap <leader>F :let @" = expand("%")<cr>
" }}}


"" Buffer stuff {{{
set hidden " to keep terminal buffers open in background
nnoremap <leader><leader> <c-^>
" }}}

"" Registers and Macros {{{
nnoremap Q @q
" }}}

"" Display {{{
set background=dark
" Tell nvim that this terminal doesn't have Background Color Erase (BCE)
let &t_ut=''

" Use 24-bit RGB color
set termguicolors

fun! s:HL(group, fg, bg, attr)
  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif
  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif
  if a:attr != ""
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
endfun

" COLORS {{{
let s:bold = "bold"
let s:italic = "italic"
let s:underline = "underline"

let s:color00                = ['#1c1c1c', '234']
let s:cursor_fg              = s:color00
let s:cursorlinenr_bg        = s:color00
let s:linenumber_bg          = s:color00
let s:statusline_active_fg   = s:color00
let s:todo_bg                = s:color00
let s:vertsplit_bg           = s:color00
let s:wildmenu_fg            = s:color00

let s:color01                = ['#af005f', '125']
let s:diffdelete_fg          = s:color01
let s:error_fg               = s:color01

let s:color02                = ['#5faf00', '70']

let s:color03                = ['#d7af5f', '179']

let s:color04                = ['#5fafd7', '74']
let s:color16                = s:color04

let s:color05                = ['#808080', '244']

let s:color06                = ['#d7875f', '173']

let s:color07                = ['#d0d0d0', '252']
let s:diffchange_fg          = s:color07

let s:color08                = ['#585858', '240']
let s:linenumber_fg          = s:color08
let s:tabline_inactive_bg    = s:color08

let s:color09                = ['#5faf5f', '71']

let s:color10                = ['#afd700', '148']
let s:wildmenu_bg            = s:color10

let s:color11                = ['#af87d7', '140']

let s:color12                = ['#ffaf00', '214']

let s:color13                = ['#ff5faf', '205']

let s:color14                = ['#00afaf', '37']
let s:tabline_active_bg      = s:color14

let s:color15                = ['#5f8787', '66']
let s:statusline_active_bg   = s:color15
let s:vertsplit_fg           = s:color15

let s:color17                = ['#d7af00', '178']

let s:cursor_bg              = ['#c6c6c6', '251']
let s:matchparen_fg          = s:cursor_bg
let s:popupmenu_fg           = s:cursor_bg

let s:cursorcolumn           = ['#303030', '236']
let s:cursorline             = s:cursorcolumn
let s:popupmenu_bg           = s:cursorcolumn

let s:cursorlinenr_fg        = ['#ffff00', '226']

let s:diffadd_bg             = ['#005f00', '22']
let s:spellrare              = s:diffadd_bg

let s:diffadd_fg             = ['#87d700', '112']

let s:diffchange_bg          = ['#005f5f', '23']

let s:error_bg               = ['#5f0000', '52']
let s:diffdelete_bg          = s:error_bg
let s:spellbad               = s:error_bg

let s:difftext_bg            = ['#008787', '30']

let s:difftext_fg            = ['#5fffff', '87']

let s:folded_bg              = ['#5f005f', '53']
let s:spellcap               = s:folded_bg

let s:folded_fg              = ['#d787ff', '177']

let s:matchparen_bg          = ['#4e4e4e', '239']

let s:search_bg              = ['#00875f', '29']

let s:search_fg              = ['#000000', '16']
let s:visual_fg              = s:search_fg

let s:spelllocal             = ['#00005f', '17']

let s:statusline_inactive_bg = ['#3a3a3a', '237']

let s:statusline_inactive_fg = ['#bcbcbc', '250']
let s:tabline_inactive_fg    = s:statusline_inactive_fg

let s:tabline_active_fg      = ['#121212', '233']

let s:tabline_bg             = ['#262626', '235']

let s:todo_fg                = ['#ff8700', '208']

let s:visual_bg              = ['#8787af', '103']

let s:background = s:color00
let s:negative   = s:color01
let s:positive   = s:color02
let s:olive      = s:color03 " string
let s:neutral    = s:color04
let s:comment    = s:color05
let s:navy       = s:color06 " storageclass
let s:foreground = s:color07

let s:nontext    = s:color08
let s:red        = s:color09 " import / try/catch
let s:pink       = s:color10 " statement, type
let s:purple     = s:color11 " if / conditional
let s:accent     = s:color12
let s:orange     = s:color13 " number
let s:blue       = s:color14 " other keyword
let s:highlight  = s:color15

let s:aqua       = s:color16
let s:green      = s:color17
" }}}

autocmd ColorScheme * highlight LineNr ctermbg=None guibg=None

autocmd ColorScheme * highlight ColorColumn ctermbg=237 guibg=#3a3a3a
"" Only use for PaperColor
autocmd ColorScheme * highlight Folded ctermbg=236 guibg=#303030
"" For SerialExperimentsLain
" autocmd ColorScheme * highlight Folded ctermfg=248 ctermbg=235 cterm=NONE

autocmd ColorScheme * highlight pythonBuiltin ctermfg=37 guifg=#00afaf

autocmd ColorScheme * highlight jsFuncCall cterm=bold ctermfg=37 guifg=#00afaf gui=bold
autocmd ColorScheme * highlight jsClassFuncName cterm=bold ctermfg=37 guifg=#00afaf gui=bold
autocmd ColorScheme * highlight jsThis ctermfg=148 guifg=#afd700

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
" colorscheme SerialExperimentsLain

" Semshi highlighting {{{

function! HandleSemshiHighlights()
  call s:HL("pythonStatement", s:color09, "", "")

" call s:HL("semshiLocal", s:TODO, "", "")
  call s:HL("semshiGlobal", s:color10, "", "")
  call s:HL("semshiImported", s:color10, "", s:bold)

  call s:HL("semshiParameter", s:color04, "", "")
  call s:HL("semshiParameterUnused", s:color04, "", "strikethrough")
  call s:HL("semshiFree", s:statusline_inactive_fg, "", "")           
  call s:HL("semshiBuiltin", s:foreground, "", "bold")
  call s:HL("semshiAttribute", s:foreground, "", "")
  call s:HL("semshiSelf", s:color04, "", "bold")
  call s:HL("semshiUnresolved", s:cursorlinenr_fg, "", s:underline)
  call s:HL("semshiSelected", s:search_fg, s:cursor_bg, "")
                     
  call s:HL("semshiErrorSign", s:foreground, s:color00, "")
  call s:HL("semshiErrorChar", s:foreground, s:error_bg, "undercurl")

  " Wow, I'm a child.
  sign define semshiError text=💩 texthl=semshiErrorSign
endfunction
" autocmd FileType python call HandleSemshiHighlights()
" }}}

set showmatch
set scrolloff=2
" HACK: scrolloff in terminal buffers causes terrible flicker https://github.com/neovim/neovim/issues/11072
au TermEnter * setlocal scrolloff=0
" DOUBLE HACK: scrolloff is global until https://github.com/neovim/neovim/pull/11854 is merged
au TermLeave * setlocal scrolloff=3

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
" }}}

"" NERDTree {{{
nnoremap <leader>m :NERDTreeToggle<cr>
" }}}

"" Ruby {{{
au BufRead,BufNewFile {Gemfile,Vagrantfile,Berksfile} set ft=ruby
" TODO: ruby syntax highlighting fix
" }}}

"" JavaScript {{{
au BufRead,BufNewFile {.babelrc} set ft=json
let g:javascript_plugin_jsdoc = 1
" }}}


"" Python {{{
" let g:python_highlight_all = 1
" Always want to fold by indent in python
autocmd FileType python   set foldmethod=indent


" Semshi {{{
" let g:semshi#no_default_builtin_highlight = v:false
" let g:semshi#simplify_markup = v:true
" }}}

" }}}


"" Fortran {{{
let fortran_free_source=1
" }}}

"" UltiSnips {{{
nnoremap <leader>u :UltiSnipsEdit<cr>
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger = "<c-f>"

" https://github.com/SirVer/ultisnips/issues/593
augroup ultisnips_no_auto_expansion
    au!
    au VimEnter * au! UltiSnips_AutoTrigger
augroup END
" }}}

"" Fugitive {{{
" Don't keep fugitive buffers open after hiding them
au BufReadPost fugitive://* set bufhidden=delete
" }}}

" CSS/SCSS {{{
au! FileType vue,html,css,scss,less setl iskeyword+=-

let g:vue_disable_pre_processors=1
" }}}

" CRYSTALLINE {{{

function! StatusLine(current, width)
  let l:s = ''

  if a:current
    let l:cur_mode = crystalline#mode()
    if l:cur_mode =~ 'INSERT' && &buftype ==# 'terminal'
      " HACK: teach crystalline about TERMINAL mode
      let l:cur_mode = substitute(l:cur_mode, 'INSERT', 'TERMINAL', '')
    endif

    let l:s .= l:cur_mode . crystalline#right_mode_sep('')
  else
    let l:s .= '%#CrystallineInactive#'
  endif
  let l:s .= ' %f%h%w%m%r '
  if a:current
    let l:s .= crystalline#right_sep('', 'Fill')

    " Don't show git info for N/A buffers
    let l:non_git = ['terminal', 'quickfix', 'nofile', 'help']
    if index(l:non_git, &buftype) == -1
      let l:git_head = fugitive#head()
      if l:git_head != ''
        let l:s .= ' ' . l:git_head
      else
        " Cross out the branch, to show that we're not in a git repo.
        let l:s .= ' ' . "\u0336"
      endif
    endif
  endif

  let l:s .= '%='
  if a:current
    let l:s .= crystalline#left_sep('', 'Fill') . ' %{coc#status()}'
    let l:s .= crystalline#left_mode_sep('')
  endif
  if a:width > 80
    let l:s .= ' %{&ft} %l/%L %c%V '
  else
    let l:s .= ' '
  endif

  return l:s
endfunction

function! TabLine()
  let l:vimlabel = has('nvim') ?  ' NVIM ' : ' VIM '
  let l:t = crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
  let l:t = substitute(l:t, '', '▌', 'g')
  return l:t
endfunction

let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_tabline_fn = 'TabLine'
let g:crystalline_theme = 'hybrid'
" used to be 
let g:crystalline_tab_separator = '│'

set showtabline=1
set guioptions-=e
set laststatus=2
" set lazyredraw
" }}}

" CoC {{{
" copy/paste from neoclide/coc.nvim/Readme.md {{{

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" RJM: changed each of these from <space> to <c-space>
" Show all diagnostics.
nnoremap <silent><nowait> <c-space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <c-space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <c-space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <c-space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <c-space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <c-space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <c-space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <c-space>p  :<C-u>CocListResume<CR>
" }}}

" }}}
