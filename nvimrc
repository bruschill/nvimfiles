filetype plugin indent on

set t_Co=256
syntax on
set background=dark
color solarized

set guifont=Source\ Code\ Pro:h12

"general
set mouse=""
set vb t_vb=
set hidden
set nowrap
set cursorline
set switchbuf=useopen
set backspace=indent,eol,start
set timeout
set timeoutlen=350
set ttimeoutlen=200

"tab settings
set ai
set et
set sta
set ts=2
set sw=2
set sts=2

"searching
set showmatch
set ignorecase
set smartcase

"line numbers
set number
set relativenumber
set ruler
set numberwidth=2

"wildmenu
set wildmenu
set matchtime=3
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*.swp,*~,._*

"listchars
set nolist

set dir=~/.vim/.temp

set completeopt-=preview

try
  set shortmess+=c
catch /E539: Illegal character/
endtry

"setting tags directory
set tags=~/.vim/tags
