setlocal shiftwidth=2
setlocal tabstop=2

" Vim gets sluggish when using syntax highlighting on Ruby code. This appears
" to be the result of Vim's regex engine. To alleviate the issue, use an older
" version of the regex engine.
setlocal re=1
