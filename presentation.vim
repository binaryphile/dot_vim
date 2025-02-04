set clipboard^=unnamed,unnamedplus  " Integrate with system clipboard
set cmdheight=2                     " Make the command area two lines high
set confirm                         " Confirm on failed operations
set nostartofline                   " Don't go to the start of the line after some commands
set number                          " Line numbers on
set relativenumber                  " Relative line numbers on (hybrid mode)
set scrolloff=15                    " Maintain lines at top or bottom

set list                    " Show invisible characters
set listchars+=tab:▸\       " Show native tabs
set listchars+=trail:•      " Show trailing spaces as dots
set listchars+=extends:>    " Line continuation character
set listchars+=precedes:<   " Line preceding content character
set listchars+=nbsp:¬       " Show non-breaking spaces

" Define a temporary listchars for visual mode only
let g:visual_listchars = 'tab:▸ ,space:·,eol:↴,nbsp:¬'

" Create an autocommand group for handling whitespace in visual mode
augroup VisualWhitespace
    autocmd!
    " Save the current 'list' and 'listchars' state and apply visual settings when entering Visual mode
    autocmd ModeChanged *:[vV\x]* let g:prev_list = &list | let g:prev_listchars = &listchars | set list | let &listchars = g:visual_listchars
    " Restore the previous 'list' and 'listchars' state when leaving Visual mode
    autocmd ModeChanged [vV\x]:* if exists('g:prev_list') | let &list = g:prev_list | unlet g:prev_list | endif | if exists('g:prev_listchars') | let &listchars = g:prev_listchars | unlet g:prev_listchars | endif
augroup END
