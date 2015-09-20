" disable default keybindings
let g:buffergator_suppress_keymaps = 1

" size buffergator window down a bit
let g:buffergator_hsplit_size = 10

" open buffergator on bottom
let g:buffergator_viewport_split_policy = 'B'

" show relative path
let g:buffergator_show_full_directory_path = 0

" sort buffers by most recently used
let g:buffergator_sort_regime = 'mru'

" automatically update window
let g:buffergator_autoupdate = 1

nmap <silent> <leader>bt :BuffergatorToggle<cr>
