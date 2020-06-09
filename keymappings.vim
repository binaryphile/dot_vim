" Set leader to space
" Note: This line MUST come before any <leader> mappings
nnoremap <SPACE> <Nop>
let mapleader=" "
let maplocalleader = "\\"

" Create newlines without entering insert mode
nnoremap go o<Esc>e
nnoremap gO O<Esc>

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>
" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Scroll larger amounts with g
nnoremap gn 15gjzz
nnoremap ge 15gkzz
vnoremap gn 15gjzz
vnoremap ge 15gkzz

" Source changes to init.vim
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap jk <esc>

nnoremap <C-L> :nohlsearch<CR><C-L>

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>
