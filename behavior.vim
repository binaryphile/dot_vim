set autowrite                         " Writes on make/shell commands
set backup                            " Turn on backups
set clipboard^=unnamed,unnamedplus    " Integrate with system clipboard
set confirm                           " Confirm on failed operations
set hidden                            " Change buffer - without saving
set nostartofline                     " Don't go to the start of the line after some commands
set switchbuf=useopen                 " Switch to an existing buffer if one exists

let &backupdir = stdpath('data').'/backup//'
if !isdirectory(&backupdir)
  call mkdir(&backupdir, '', 0700)
endif

if has('persistent_undo')
  set undofile
endif

" Ignore various filetypes while expanding
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*
