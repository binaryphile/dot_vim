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

let  g:go_fmt_command                     =  "goimports"
let  g:go_highlight_types                 =  1
let  g:go_highlight_functions             =  1
let  g:go_highlight_function_calls        =  1
let  g:go_highlight_function_arguments    =  1
let  g:go_highlight_operators             =  1
let  g:go_highlight_extra_types           =  1
let  g:go_highlight_fields                =  1
let  g:go_highlight_variable_assignments  =  1
let  g:go_metalinter_autosave             =  1
let  g:go_version_warning                 =  0
