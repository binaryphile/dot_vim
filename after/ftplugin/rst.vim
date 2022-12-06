" Underline the current line with '-'
nnoremap <buffer> <silent> <localleader>ul :t.\|s/./-/\|:nohls<cr>
" Underline the current line with '='
nnoremap <buffer> <silent> <localleader>uul :t.\|s/./=/\|:nohls<cr>

" Insert date
iabbrev <buffer> ddate <C-R>=strftime("%Y-%m-%d")<CR>
