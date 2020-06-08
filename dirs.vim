let dataDir = stdpath('data')

if !isdirectory(dataDir)
  call system('mkdir -p '.dataDir)
endif

let backupDir = dataDir.'/backup'
if !isdirectory(backupDir)
  call mkdir(backupDir, '', 0700)
endif

let &backupdir = backupDir.'//' " Double // causes backups to use full file path

let swapDir=dataDir.'/swap'
if !isdirectory(swapDir)
  call mkdir(swapDir, '', 0700)
endif

let &directory = swapDir.'//' " Double // causes backups to use full file path

" Persistent Undo
if has('persistent_undo')
  let undoDir=dataDir.'/undo'
  if !isdirectory(undoDir)
    call mkdir(undoDir, '', 0700)
  endif
  let &undodir = undoDir
endif

unlet dataDir backupDir swapDir undoDir
