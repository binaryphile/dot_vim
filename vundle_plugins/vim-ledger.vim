if exists('g:vundle_installing_plugins')
  Plugin 'ledger/vim-ledger'
  finish
endif

let g:ledger_default_commodity = '$'

inoremap <silent><buffer> <C-l> <Esc>:call ledger#align_amount_at_cursor()<CR>
