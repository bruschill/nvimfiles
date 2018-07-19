let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
      \ 'ignore_case': v:true,
      \ 'smart_case': v:true,
      \ })

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" use shift-tab to reverse cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

