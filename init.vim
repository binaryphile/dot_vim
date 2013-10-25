" =============================================================================
" Who: Jeremy Mack (@mutewinter)
" Description: The Vim Configuration of Champions
" Version: 3.0 - Now each plugin is included and managed in its own file!
" =============================================================================

if &shell =~# 'fish$'
    set shell=/bin/bash
endif

" All of the plugins are installed with Vundle from this file.
source ~/.config/nvim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" All of the Vim configuration.
source ~/.config/nvim/config.vim
" New commands
source ~/.config/nvim/commands.vim
" All hotkeys, not dependant on plugins, are mapped here.
source ~/.config/nvim/mappings.vim
" Load plugin-specific configuration.
source ~/.config/nvim/plugins.vim
" Small custom functions.
source ~/.config/nvim/functions.vim
" Auto commands.
source ~/.config/nvim/autocmds.vim
