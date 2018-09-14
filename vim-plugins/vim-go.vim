if exists('g:vim_plug_installing_plugins')
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
endif

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

nnoremap <Leader>t :GoTest<CR>
nnoremap <Leader>b :<C-u>call <SID>build_go_files()<CR>
nnoremap <Leader>r :GoRun<CR>
nnoremap <Leader>c :GoCoverageBrowser<CR>

let g:go_fmt_command = "goimports"
