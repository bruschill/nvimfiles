let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

"turn off whitespace detection
let g:airline#extensions#whitespace#enabled=0

"enable modified detection
let g:airline_detect_modified=1

"enable paste detection
let g:airline_detect_paste=1

"tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_type = 0

"enable syntastic integration
let g:airline#extensions#syntastic#enabled = 1

"enable tmuxline integration
let g:airline#extensions#tmuxline#enabled = 1

"small section tweaks
let g:airline_section_y=''
let g:airline_section_z='%3p%% %{g:airline_symbols.linenr}%4l%#__restore__#:%3c'

let g:airline_right_alt_sep = '<'

"ctrlp config
let g:airline#extensions#ctrlp#show_adjacent_modes = 0

let g:airline_extensions = ['ctrlp', 'syntastic', 'tabline', 'tmuxline', 'whitespace']
