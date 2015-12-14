"general config
let g:easytags_cmd='/usr/local/bin/ctags'
let g:easytags_opts = ['--languages=css,go,javascript,json,ruby,vim', '--exclude=node_modules', '--exclude=tmp', '--exclude=temp', '--exclude=log']
let g:easytags_languages = {
\ 'language': {
\    'cmd': g:easytags_cmd,
\    'args':[],
\    'stdout_opt': '-f-',
\    'fileoutput_opt': '--fields=+l'
\ }
\}

let g:easytags_async=1

let g:easytags_by_filetype='~/.nvim/tags'

let g:easytags_include_members = 1

"don't automatically update tags when pausing for a few seconds
let g:easytags_on_cursorhold = 0

"don't automatically highlight tags after update
let g:easytags_auto_highlight = 0

"update tags after save
let g:easytags_events = ['BufWritePost']
let g:easytags_auto_update = 1

let g:easytags_resolve_links=1
let g:easytags_updatetime_warn=0
