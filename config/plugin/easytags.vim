"general config
let g:easytags_cmd='/usr/local/bin/ctags'
let g:easytags_languages = {
\ 'language': {
\    'cmd': g:easytags_cmd,
\    'args':[],
\    'stdout_opt': '-f-',
\    'fileoutput_opt': '--fields=+l'
\ }
\}

let g:easytags_async=1

let g:easytags_by_filetype='~/.vim/tags'

"don't automatically update tags when pausing for a few seconds
let g:easytags_on_cursorhold = 0

"don't automatically highlight tags after update
let g:easytags_auto_highlight = 0

"update tags after save
let g:easytags_events = ['BufWritePost']

let g:easytags_resolve_links=1
let g:easytags_updatetime_warn=0
