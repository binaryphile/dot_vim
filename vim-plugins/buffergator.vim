if exists('g:vim_plug_installing_plugins')
  Plug 'jeetsukumaran/vim-buffergator'
endif

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nnoremap <leader>nn :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nnoremap <leader>ee :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nnoremap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nnoremap <leader>T :enew<cr>
nnoremap <leader>bq :bp <BAR> bd #<cr>
