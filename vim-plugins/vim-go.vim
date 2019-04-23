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

nnoremap <Leader>ot :GoTest<CR>
nnoremap <Leader>ob :<C-u>call <SID>build_go_files()<CR>
nnoremap <Leader>or :GoRun<CR>
nnoremap <Leader>oc :GoCoverageBrowser<CR>
nnoremap <Leader>od :GoDeclsDir<CR>
nnoremap <Leader>oa :GoAlternate<CR>

let g:go_fmt_command                      = "goimports"
let g:go_highlight_types                  = 1
let g:go_highlight_functions              = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_arguments     = 1
let g:go_highlight_operators              = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_variable_assignments   = 1
let g:go_metalinter_autosave              = 1
let g:go_version_warning                  = 0
" let  g:go_auto_type_info                  =  1

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
