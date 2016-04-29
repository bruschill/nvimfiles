"run test commands with :terminal
let test#strategy = 'neoterm'

"mappings
nnoremap <silent> <C-t>t :TestNearest<CR>
nnoremap <silent> <C-t>T :TestFile<CR>
nnoremap <silent> <C-t>a :TestSuite<CR>
nnoremap <silent> <C-t>l :TestLast<CR>
