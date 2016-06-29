" general
let g:go_list_height = 10

" enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

" addl syntax highlighting
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_string_spellcheck = 0

" run :GoMetaLinter on save
let g:go_metalinter_autosave = 1

" open alternate file in a vertical split
let g:go_alternate_mode = "vertical botright split"

nnoremap <silent> <C-g>r :GoDeps<cr>
nnoremap <silent> <C-g>b :GoBuild<cr>
nnoremap <silent> <C-g>r :GoRun<cr>
nnoremap <silent> <C-g>i :GoImports<cr>
nnoremap <silent> <C-g>t :GoTest! -bench .<cr>
