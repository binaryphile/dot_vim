let shareDir = stdpath('data')

if !isdirectory(shareDir)
  call system('mkdir -p '.shareDir)
endif

let backupDir = shareDir.'/backup'
if !isdirectory(backupDir)
  call mkdir(backupDir, '', 0700)
endif

let &backupdir = backupDir.'//' " Double // causes backups to use full file path
