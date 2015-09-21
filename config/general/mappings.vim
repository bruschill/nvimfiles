"remap mapleader
let mapleader=","

"vimrc edit/reload mappings
nmap <silent> <Leader>ve :e ~/.nvimrc<CR>
nmap <silent> <Leader>vr :so ~/.nvimrc<CR>

"tab settings
nmap <Leader>tn :tabnew<CR>
nmap <Leader>tc :tabclose<CR>

"mapping enter to clear search when pressed
nmap <cr> :noh<cr>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" buffer movement
nmap <silent> <leader>bo :enew<cr>
nmap <silent> <leader>bn :bn<cr>
nmap <silent> <leader>bp :bp<cr>
nmap <silent> <leader>bl :bl<cr>
nmap <silent> <leader>bf :bf<cr>
nmap <silent> <leader>bu :bun<cr>
nmap <silent> <leader>bd :bd<cr>
