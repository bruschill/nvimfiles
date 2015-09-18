let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

"turn off whitespace detection
let g:airline#extensions#whitespace#enabled=0

"enable modified detection
let g:airline_detect_modified=1

"enable paste detection
let g:airline_detect_paste=1

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
