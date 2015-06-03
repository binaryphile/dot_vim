if exists('g:vundle_installing_plugins')
  Plugin 'osyo-manga/vim-anzu'
  finish
endif

nmap j <Plug>(anzu-n)
nmap J <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)
let g:airline#extensions#anzu#enabled = 1
