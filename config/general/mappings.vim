"unbind f1
:nmap <F1> <nop>

"remap mapleader
let mapleader=","

"map search
nmap <Leader>f :Rg<space>

"vimrc edit/reload mappings
nmap <silent> <Leader>ve :e ~/.config/nvim/init.vim<cr>
nmap <silent> <Leader>vr :so ~/.config/nvim/init.vim<cr>

" buffer manipulation
nmap <silent> <leader>bo :enew<cr>
nmap <silent> <leader>bn :bn<cr>
nmap <silent> <leader>bp :bp<cr>
nmap <silent> <leader>bl :bl<cr>
nmap <silent> <leader>bf :bf<cr>
nmap <silent> <leader>bu :bun<cr>
nmap <silent> <leader>bd :bd<cr>

" tab manipulation
nmap <leader>to :tabnew<cr>
nmap <silent> <leader>tm :MoveTabRight<cr>
nmap <silent> <leader>tM :MoveTabLeft<cr>
nmap <leader>tn :tabn<cr>
nmap <leader>tp :tabp<cr>
nmap <leader>tl :tabl<cr>
nmap <leader>tf :tabfir<cr>
nmap <leader>tc :tabc<cr>

fu! MoveTab(direction)
  let move_dir = ''

  if a:direction == 'right'
    let move_dir = '+'
    let num_spaces = input("Move tab right: ")
  elseif a:direction == 'left'
    let move_dir = '-'
    let num_spaces = input("Move tab left: ")
  else
    return
  endif

  exec "tabm " . move_dir . num_spaces
  exec "redrawstatus"
endf

com! MoveTabRight :call MoveTab('right')
com! MoveTabLeft :call MoveTab('left')

"mapping enter to clear search when pressed
nmap <cr> :noh<cr>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<cr>

" Adjust viewports to the same size
map <Leader>= <C-w>=
