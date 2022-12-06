" close the preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif
