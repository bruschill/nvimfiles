"set one location for tags
let g:gutentags_cache_dir="~/.nvim/tags"

let g:gutentags_project_info = []
call add(g:gutentags_project_info, {"type": "go"})
let g:gutentags_ctags_executable_go = 'gotags'

"set list of directories to exclude when generating tags
let g:gutentags_exclude=["node_modules","plugged","tmp","temp","log","vendor"]

let g:gutentags_resolve_symlinks = 1
