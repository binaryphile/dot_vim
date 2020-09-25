setlocal colorcolumn=100
setlocal noexpandtab
setlocal shiftwidth=4
setlocal tabstop=4
setlocal textwidth=100
let b:airline_whitespace_checks =  [ 'trailing', 'long', 'conflicts' ]

" " Use K to show documentation in preview window
" nnoremap <buffer> <silent>gD :call <SID>show_documentation()<CR>
"
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction
"
" " Use <tab> to confirm completion, `<C-g>u` means break undo chain at current
" " position. Coc only does snippet and additional edit on confirm. Note that
" " arrow keys navigate completions (but I have a fancy keyboard).
" inoremap <buffer> <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
" " Highlight symbol under cursor on CursorHold
" " TODO Broken right now. Try this again in the future to replace
" " vim-illuminate.
" autocmd CursorHold * silent call CocActionAsync('highlight')
"
" " Remap for rename current word
" nnoremap <buffer> <localleader>rn <Plug>(coc-rename)
"
" " Pick a new color
" nnoremap <buffer> <localleader>cpp :call CocAction('pickColor')<CR>
" " Change color presentation
" nnoremap <buffer> <localleader>c22 :call CocAction('colorPresentation')<CR>
"
" " Use `[c` and `]c` to navigate diagnostics
" nnoremap <buffer> <silent> [c <Plug>(coc-diagnostic-prev)
" nnoremap <buffer> <silent> ]c <Plug>(coc-diagnostic-next)
"
" " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xnoremap <buffer> <localleader>a  <Plug>(coc-codeaction-selected)
" nnoremap <buffer> <localleader>a  <Plug>(coc-codeaction-selected)
"
" " Remap for do codeAction of current line
" nnoremap <buffer> <localleader>ac  <Plug>(coc-codeaction)
" " Autofix problem of current line
" nnoremap <buffer> <localleader>ff  <Plug>(coc-fix-current)
" " Search workspace symbols
" nnoremap <buffer> <localleader>al  :<C-u>CocList actions<cr>
"
" " Search workspace symbols
" nnoremap <buffer> <silent> <localleader>ss  :<C-u>CocList -I symbols<cr>
"
" " Map keys for gotos
" nnoremap <buffer> <silent> gd <Plug>(coc-definition)
" nnoremap <buffer> <silent> gtd <Plug>(coc-type-definition)
" nnoremap <buffer> <silent> gi <Plug>(coc-implementation)
" nnoremap <buffer> <silent> gr <Plug>(coc-references)
"
" function! s:organize_imports()
"   call CocAction('runCommand', 'tsserver.organizeImports')
"   normal gF
" endfunction
"
" nnoremap <buffer> <silent> <localleader>if :call <SID>organize_imports()<CR>
"
" " Introduce function text object
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xnoremap if <Plug>(coc-funcobj-i)
" xnoremap af <Plug>(coc-funcobj-a)
" onoremap if <Plug>(coc-funcobj-i)
" onoremap af <Plug>(coc-funcobj-a)
"
" " Use <TAB> for selections ranges.
" " NOTE: Requires 'textDocument/selectionRange' support from the language server.
" " coc-tsserver, coc-python are the examples of servers that support it.
" nnoremap <silent> <TAB> <Plug>(coc-range-select)
" xnoremap <silent> <TAB> <Plug>(coc-range-select)
