set nocompatible " be iMproved

" Set leader to space
" Note: This line MUST come before any <leader> mappings
nnoremap <SPACE> <Nop>
let mapleader=" "
let maplocalleader = "\\"

" ---------------
" Plugins
" ---------------
call plug#begin('~/.vim/plugged')

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:vim_plug_installing_plugins = 1
for file in split(glob('$HOME/.vim/vim-plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vim_plug_installing_plugins

" Add plugins to &runtimepath
call plug#end()

" ---------------
" Color
" ---------------
colorscheme jellybeans
set t_Co=256

" -----------------------------
" File Locations
" -----------------------------
let shareDir=expand('$HOME/.local/share/vim')
if !isdirectory(shareDir)
  call system('mkdir -p '.shareDir)
endif
let backupDir=shareDir.'/backup'
if !isdirectory(backupDir)
  call mkdir(backupDir, '', 0700)
endif
set backupdir=~/.local/share/vim/backup// " Double // causes backups to use full file path
let swapDir=shareDir.'/swap'
if !isdirectory(swapDir)
  call mkdir(swapDir, '', 0700)
endif
set directory=~/.local/share/vim/swap// " Double // causes backups to use full file path
" Persistent Undo
if has('persistent_undo')
  let undoDir=shareDir.'/undo'
  if !isdirectory(undoDir)
    call mkdir(undoDir, '', 0700)
  endif
  set undodir=~/.local/share/vim/undo
  set undofile
endif

" ---------------
" UI
" ---------------
set number         " Line numbers on
set relativenumber " Relative line numbers on (hybrid mode)
set nowrap         " Line wrapping off
set cmdheight=2    " Make the command area two lines high
set encoding=utf-8
set title          " Set the title of the window in the terminal to the file
" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" ---------------
" Behaviors
" ---------------
set backup             " Turn on backups
set hidden             " Change buffer - without saving
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set nofoldenable       " Disable folding entirely.
set foldlevelstart=99  " I really don't like folds.
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set shiftwidth=2 " Tabs under smart indent
set shiftround
set expandtab
set formatoptions+=b

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list
" Reset the listchars
set listchars=""
" make tabs visible
set listchars=tab:▸▸
" show trailing spaces as dots
set listchars+=trail:•
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<
" show non-breaking spaces
set listchars+=nbsp:¬

let g:is_bash = 1

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times
    " Idea from http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    autocmd!

    " When editing a file, always jump to the last cursor position.
    " This must be after the uncompress commands.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line ("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal tabstop=4
    autocmd FileType java setlocal shiftwidth=4
    autocmd FileType java setlocal textwidth=100
  augroup END
endif

" ---------
" Functions
" ---------

" ---------------
" Strip Trailing White Space
" ---------------
" From http://vimbits.com/bits/377
" Preserves/Saves the state, executes a command, and returns to the saved state
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
function! StripTrailingWhiteSpaceAndSave()
  :call Preserve("%s/\\s\\+$//e")<CR>
  :write
endfunction
command! StripTrailingWhiteSpaceAndSave :call StripTrailingWhiteSpaceAndSave()<CR>
nnoremap <silent> <leader>stw :silent! StripTrailingWhiteSpaceAndSave<CR>

" ----------------------------------------
" Mappings
" ----------------------------------------

" Minimak
nnoremap n j
vnoremap n j
nnoremap e k
vnoremap e k
nnoremap j n
vnoremap j n
nnoremap k e
vnoremap k e

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

" Insert date
iabbrev ddate <C-R>=strftime("%Y-%m-%d")<CR>
