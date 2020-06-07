if exists('g:vim_plug_installing_plugins')
  Plug 'francoiscabrol/ranger.vim'
  if has('nvim')
    Plug 'rbgrouleff/bclose.vim'
  endif
endif

let g:ranger_replace_netrw = 1
