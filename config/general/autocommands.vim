"general
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"git
au FileType gitcommit setlocal et sta ts=2 sw=2 sts=2
au FileType gitcommit startinsert

"javascript
au FileType javascript setlocal et ts=2 sw=2 sts=2

"go
au FileType go setlocal et ts=4 sw=4 sts=4

" ruby//embedded ruby
au FileType ruby,eruby,yaml setlocal et sta ts=2 sw=2 sts=2

" vim
au FileType vim setlocal et sta ts=2 sw=2 sts=2

" misc
func! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWhitespace()

" automatically reload file if changed
autocmd BufEnter,FocusGained * checktime
