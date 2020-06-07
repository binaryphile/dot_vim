let shareDir=stdpath('data')
if !isdirectory(shareDir)
  call system('mkdir -p '.shareDir)
endif
let backupDir=shareDir.'/backup'
if !isdirectory(backupDir)
  call mkdir(backupDir, '', 0700)
endif
set backupdir=~/.local/share/nvim/backup// " Double // causes backups to use full file path
let swapDir=shareDir.'/swap'
if !isdirectory(swapDir)
  call mkdir(swapDir, '', 0700)
endif
set directory=~/.local/share/nvim/swap// " Double // causes backups to use full file path
" Persistent Undo
if has('persistent_undo')
  let undoDir=shareDir.'/undo'
  if !isdirectory(undoDir)
    call mkdir(undoDir, '', 0700)
  endif
  set undodir=~/.local/share/nvim/undo
  set undofile
endif
