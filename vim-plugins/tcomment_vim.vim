if exists('g:vim_plug_installing_plugins')
  Plug 'tomtom/tcomment_vim'
endif

let g:tcomment_mapleader1 = ''
let g:tcomment_mapleader2 = ''
let g:tcomment_opleader1 = 'tc'
nnoremap <silent><leader>cc :TComment<CR>
vnoremap <silent><leader>cc :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>
