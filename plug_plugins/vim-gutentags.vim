if exists('g:plug_installing_plugins')
  Plug 'ludovicchabant/vim-gutentags'
  finish
endif

let g:gutentags_ctags_extra_args = ['--recurse=no']
