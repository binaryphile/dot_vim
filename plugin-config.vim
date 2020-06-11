for file in split(glob(stdpath('config').'/vim-plugins/*.vim'), '\n')
  exe 'source' file
endfor
