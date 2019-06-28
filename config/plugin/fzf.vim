let $FZF_DEFAULT_COMMAND = "rg --glob '!node_modules/*' --files --no-ignore-vcs --hidden"

let $FZF_CTRL_R_OPTS='--no-sort'
let $FZF_DEFAULT_OPTS='
      \ --ansi
      \ --bind ctrl-f:page-down,ctrl-b:page-up
      \ --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
      \ --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'


let g:fzf_layout = { 'down': '20%' }

let g:fzf_nvim_statusline = 0

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
\}

nnoremap <c-p> :FZF<cr>
