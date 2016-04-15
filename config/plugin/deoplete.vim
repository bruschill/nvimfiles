let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" use shift-tab to reverse cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"<Paste>
