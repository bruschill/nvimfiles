"git
au FileType gitcommit setlocal et sta ts=2 sw=2 sts=2

"go
au FileType go setlocal et ts=4 sw=4 sts=4

" ruby//embedded ruby
au FileType ruby,eruby,yaml setlocal et sta ts=2 sw=2 sts=2

" vim
au FileType vim setlocal et sta ts=2 sw=2 sts=2

" quickfix window
autocmd FileType qf wincmd J

" misc
func! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWhitespace()

