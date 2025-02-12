set clipboard^=unnamed,unnamedplus  " Integrate with system clipboard
set cmdheight=2                     " Make the command area two lines high
set confirm                         " Confirm on failed operations
set nostartofline                   " Don't go to the start of the line after some commands
set number                          " Line numbers on
set relativenumber                  " Relative line numbers on (hybrid mode)
set scrolloff=15                    " Maintain lines at top or bottom

set list                    " Show invisible characters

set listchars+=extends:>    " Line continuation character
set listchars+=precedes:<   " Line preceding content character

set listchars+=nbsp:¬       " Show non-breaking spaces
set listchars+=space:·      " Show spaces as dots
set listchars+=tab:▸\       " Show native tabs
set listchars+=trail:·      " Show trailing spaces as dots

highlight! Whitespace ctermfg=bg guifg=bg   " Make whitespace characters blend into the background
