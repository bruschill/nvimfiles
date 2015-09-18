"remap mapleader
let mapleader=","

"vimrc edit/reload mappings
nmap <silent> <Leader>ve :e ~/.vimrc<CR>
nmap <silent> <Leader>vr :so ~/.vimrc<CR>

"tab settings
nmap <Leader>tn :tabnew<CR>
nmap <Leader>tc :tabclose<CR>

"mapping enter to clear search when pressed
nmap <cr> :noh<cr>

" Some helpers to edit mode
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=
