" ---------------
" Plugins
" ---------------
call plug#begin(stdpath('data').'/plugged')

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:vim_plug_installing_plugins = 1
for file in split(glob(stdpath('config').'/vim-plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vim_plug_installing_plugins

" Add plugins to &runtimepath
call plug#end()