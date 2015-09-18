let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_type_info = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

nnoremap <silent> <C-g>I :GoInstallBinaries<cr>
nnoremap <silent> <C-g>U :GoUpdateBinaries<cr>

nnoremap <silent> <C-g>r :GoDeps<cr>
nnoremap <silent> <C-g>b :GoBuild<cr>
nnoremap <silent> <C-g>r :GoRun<cr>
nnoremap <silent> <C-g>i :GoInstall<cr>
nnoremap <silent> <C-g>t :GoTest<cr>
