if exists('g:plug_installing_plugins')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  finish
endif

let g:coc_global_extensions = [
      \'coc-java'
      \]
