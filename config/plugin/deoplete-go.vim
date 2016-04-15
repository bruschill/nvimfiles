"make deoplete-go call gocode directly
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

"sort completion list in arbitary order
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
