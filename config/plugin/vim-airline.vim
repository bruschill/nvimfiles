let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts=1

let g:airline_extensions = ['tabline', 'whitespace']

"turn off whitespace detection
let g:airline#extensions#whitespace#enabled=0

"enable modified detection
let g:airline_detect_modified=1

"enable paste detection
let g:airline_detect_paste=0

"tabline
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_close_button = 0

"small section tweaks
let g:airline_section_y=''
let g:airline_section_z='%3p%% %{g:airline_symbols.linenr}%4l%#__restore__#:%3c'

let g:airline_right_alt_sep = '<'
