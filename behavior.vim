set autowrite          " Writes on make/shell commands
set backup             " Turn on backups
set hidden             " Change buffer - without saving
set nostartofline      " Don't go to the start of the line after some commands
set switchbuf=useopen  " Switch to an existing buffer if one exists
"set iskeyword+=\$,-   " Add extra characters that are valid parts of variables

" Ignore various filetypes while expanding
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*

" Integrate with tmux clipboard
set clipboard^=unnamed,unnamedplus
let g:clipboard = {
  \   'name': 'myClipboard',
  \   'copy': {
  \      '+': 'tmux load-buffer -',
  \      '*': 'tmux load-buffer -',
  \    },
  \   'paste': {
  \      '+': 'tmux save-buffer -',
  \      '*': 'tmux save-buffer -',
  \   },
  \   'cache_enabled': 1,
  \ }
