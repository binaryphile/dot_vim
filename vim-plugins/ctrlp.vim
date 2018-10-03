if exists('g:vim_plug_installing_plugins')
  Plug 'ctrlpvim/ctrlp.vim'
endif

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nnoremap <leader>p :CtrlP<CR>

" Easy bindings for its various modes
nnoremap <leader>bb :CtrlPBuffer<CR>
nnoremap <leader>bm :CtrlPMixed<CR>
nnoremap <leader>bs :CtrlPMRU<CR>
