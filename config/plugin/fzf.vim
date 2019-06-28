let $FZF_DEFAULT_COMMAND = "rg --glob '!node_modules/*' --files --no-ignore-vcs --hidden"

let $FZF_CTRL_R_OPTS='--no-sort'
let $FZF_DEFAULT_OPTS='
      \ --ansi
      \ --bind ctrl-f:page-down,ctrl-b:page-up'


let g:fzf_layout = { 'down': '20%' }

let g:fzf_nvim_statusline = 0

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
\}

nnoremap <c-p> :FZF<cr>

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)
