"set one location for tags
let g:gutentags_cache_dir='~/.nvim/tags'

"set list of directories to exclude when generating tags
let g:gutentags_exclude=['node_modules','plugged','tmp','temp','log','vendor']

"set ruby executable
let g:gutentags_ctags_executable_ruby = 'ripper-tags'
