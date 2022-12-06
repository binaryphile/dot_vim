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

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Scroll larger amounts with g
nnoremap gj 15jzz
nnoremap gk 15kzz
vnoremap gj 15jzz
vnoremap gk 15kzz

nnoremap <C-L> :nohlsearch<CR><C-L>       " clear search highlight
