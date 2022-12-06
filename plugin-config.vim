for file in split(glob(stdpath('config').'/plug_plugins/*.vim'), '\n')
  exe 'source' file
endfor
