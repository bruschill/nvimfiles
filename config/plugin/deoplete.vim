let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1

call remote#host#RegisterPlugin('python3', '/Users/bruschill/.config/nvim/plugged/deoplete.nvim/rplugin/python3/deoplete', [{'sync': v:true, 'name': '_deoplete', 'opts': {}, 'type': 'function'}])

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" use shift-tab to reverse cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
