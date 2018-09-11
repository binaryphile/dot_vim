if exists('g:vim_plug_installing_plugins')
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
endif

nnoremap <Leader>t :GoTest<CR>
