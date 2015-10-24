let g:fzf_layout = { 'down': '20%' }

let g:fzf_nvim_statusline = 0

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
\}

nnoremap <c-p> :FZF<cr>
nmap <Leader>f :Ag<space>
