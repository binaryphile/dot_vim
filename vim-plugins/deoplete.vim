Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
