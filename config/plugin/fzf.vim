let $FZF_DEFAULT_COMMAND = 'ag -l --ignore "node_modules" -g ""'
let $FZF_CTRL_R_OPTS='--no-sort'
let $FZF_DEFAULT_OPTS='
      \ --ansi
      \ --bind ctrl-f:page-down,ctrl-b:page-up
      \ --color dark,hl:33,hl+:37,fg+:235,bg+:136,fg+:254
      \ --color info:254,prompt:37,spinner:108,pointer:235,marker:235'


let g:fzf_layout = { 'down': '20%' }

let g:fzf_nvim_statusline = 0

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
\}

nnoremap <c-p> :FZF<cr>
nmap <Leader>f :Ag<space>
