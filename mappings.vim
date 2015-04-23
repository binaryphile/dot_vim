" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to space
" Note: This line MUST come before any <leader> mappings
nnoremap <SPACE> <Nop>
let mapleader=" "
let maplocalleader = "\\"

" ---------------
" Regular Mappings
" ---------------

nnoremap n j
vnoremap n j
nnoremap e k
vnoremap e k

" Swap ; and : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" Create newlines without entering insert mode
nnoremap go o<Esc>e
nnoremap gO O<Esc>

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" Use very magic (Perl-like) regex style
nnoremap / /\v
vnoremap / /\v

" Don't move on *
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Scroll larger amounts with C-j / C-k
nnoremap <C-n> 15gjzz
nnoremap <C-e> 15gkzz
vnoremap <C-n> 15gjzz
vnoremap <C-e> 15gkzz

" ---------------
" Leader Mappings
" ---------------

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" ---------------
" Typo Fixes
" ---------------

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@
