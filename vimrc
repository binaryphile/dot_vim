" =============================================================================
" Who: Jeremy Mack (@mutewinter)
" Description: The Vim Configuration of Champions
" Version: 3.0 - Now each plugin is included and managed in its own file!
" =============================================================================

if &shell =~# 'fish$'
    set shell=/bin/bash
endif

" All of the plugins are installed with Vundle from this file.
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" All of the Vim configuration.
source ~/.vim/config.vim
" Load plugin-specific configuration.
source ~/.vim/plugins.vim
" Small custom functions.
source ~/.vim/functions.vim
