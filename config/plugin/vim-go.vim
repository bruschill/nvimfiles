" addl syntax highlighting
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_string_spellcheck = 0

" run :GoMetaLinter on save
let g:go_metalinter_autosave = 0

" new terminal opened by some go commands opens in new tab
let g:go_term_mode = "botright split"
let g:go_term_height = 15

" open alternate file in a vertical split
let g:go_alternate_mode = "vertical botright split"

nnoremap <silent> <C-g>r :GoDeps<cr>
nnoremap <silent> <C-g>b :GoBuild<cr>
nnoremap <silent> <C-g>r :GoRun<cr>
nnoremap <silent> <C-g>i :GoImports<cr>
nnoremap <silent> <C-g>t :GoTest<cr>
