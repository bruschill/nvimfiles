call plug#begin('~/.nvim/plugged')

" GENERAL
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'

Plug 'Shougo/vimproc.vim', { 'do': 'make clean && make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --gocode-completer' }

Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/syntastic'
Plug 'rking/ag.vim'
Plug 'tomtom/tcomment_vim'
Plug 'regedarek/ZoomWin'
Plug 'bling/vim-airline'

" CTRL-P
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nixprime/cpsm', { 'do': './install.sh' }

" TMUX
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

" FILETYPE-SPECIFIC
" ruby
Plug 'tpope/vim-rbenv', { 'for': ['ruby', 'eruby'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" javascript
Plug 'marijnh/tern_for_vim', { 'do': 'npm install', 'for': ['javascript', 'html', 'eruby'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html'] }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'html'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'html'] }
Plug 'elzr/vim-json', { 'for': ['json', 'javascript'] }

" go
func! BuildVimGo(info)
  if a:info.status == 'installed'
    !vim -c "GoInstallBinaries" -c "qa!"
  else
    !vim -c "GoInstallBinaries" -c "qa!"
  endif
endf
Plug 'fatih/vim-go', { 'for': ['go'] }

" markup
Plug 'othree/html5.vim', { 'for': ['html', 'javascript', 'eruby'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css', 'eruby'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'markdown', 'mkd.markdown'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }

" other
Plug 'solarnz/thrift.vim', { 'for': ['thrift'] }

call plug#end()

set t_Co=256
set background=dark
color solarized

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

set dir=~/.nvim/.temp

set completeopt-=preview

"setting tags directory
set tags=~/.nvim/tags

for f in split(glob('~/.nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
