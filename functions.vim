for file in split(glob(stdpath('config').'/functions/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
