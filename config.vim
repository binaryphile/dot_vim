set autowrite           " Writes on make/shell commands
set backup              " Turn on backups
set hidden              " Change buffer without saving
set switchbuf=useopen   " Switch to an existing buffer if one exists

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
