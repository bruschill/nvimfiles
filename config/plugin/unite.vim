" SETTINGS
" general
call unite#custom#profile('default', 'context', {
      \ 'winheight': 10,
      \ 'prompt': '» ',
      \ 'prompt_direction': 'below',
      \ 'direction': 'botright'
\})

let g:unite_force_overwrite_statusline = 0

" caching
let g:unite_data_directory = '~/.nvim/.unite_cache'
let g:unite_source_rec_min_cache_files = 1

" ignores
call unite#custom#source('file,file_rec,file_rec/async,file_rec/neovim,file/new,buffer,grep',
      \ 'ignore_globs', ['bundle/**', 'rubygems/**', 'log/**', 'tmp/**', 'temp/**', 'node_modules/**', 'plugged/**', 'unite_cache/*', 'tags/*', '**/*.png', '**/*.jpg', '**/*.jpeg', '**/*.svg', '**/*.psd', '**/*.gif', '**/*.ico', '**/*.woff', '**/*.eot', '**/*.ttf'])

" fuzzy-matching
let g:unite_source_rec_async_command = ["ag", "--vimgrep", "--follow", "--nocolor", "--nogroup", "-g", ""]
call unite#custom#source('file,file_rec,file_rec/async,file_rec/neovim,buffer,grep', 'sorters', 'sorter_selecta')
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" grep settings
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '-i --line-numbers --nocolor --nogroup --hidden --ignore ''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''log'''
let g:unite_source_grep_recursive_opt = ''

" mappings
nnoremap <C-p> :Unite -start-insert buffer file_rec/neovim:!<CR>
nnoremap <leader>f :Unite -truncate-width=25 grep:!<cr>

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  let b:SuperTabDisabled=1

  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction
