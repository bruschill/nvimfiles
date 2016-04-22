call plug#begin('~/.config/nvim/plugged')

" GENERAL
Plug 'Shougo/deoplete.nvim'

Plug 'blueyed/vim-gutentags'
Plug 'tpope/vim-git'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'benekastah/neomake'
Plug 'tomtom/tcomment_vim'
Plug 'regedarek/ZoomWin'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COLORS
Plug 'altercation/vim-colors-solarized'

" FZF
Plug 'junegunn/fzf.vim'

" TMUX
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

" FILETYPE-SPECIFIC
" ruby
Plug 'osyo-manga/vim-monster', { 'for': ['ruby'] }
Plug 'tpope/vim-rbenv', { 'for': ['ruby'] }
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby'] }
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" javascript
Plug 'marijnh/tern_for_vim', { 'do': 'npm install', 'for': ['javascript'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript'] }
Plug 'othree/yajs.vim', { 'for': ['javascript'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript'] }
Plug 'moll/vim-node', { 'for': ['javascript'] }
Plug 'elzr/vim-json', { 'for': ['json'] }
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee'] }

" go
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': ['go'] }

" markup
Plug 'othree/html5.vim', { 'for': ['html'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'markdown', 'mkd.markdown'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
Plug 'tpope/vim-haml', { 'for': ['haml'] }

call plug#end()

let g:python3_host_prog='/usr/local/bin/python3'
let g:python3_host_skip_check=1

colorscheme solarized
set background=dark

"general
set mouse=""
set hidden
set nowrap
set cursorline
set switchbuf=useopen
set backspace=indent,eol,start
set timeout
set timeoutlen=450

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

set completeopt-=preview
set completeopt+=noinsert,noselect

"setting tags directory
set tags="~/.nvim/tags"

set rtp+=/usr/local/opt/fzf

set backupdir=~/.local/share/nvim/swap

" deoplete
call remote#host#RegisterPlugin('python3', '/Users/bruschill/.config/nvim/plugged/deoplete.nvim/rplugin/python3/deoplete.py', [
      \ {'sync': 1, 'name': '_deoplete', 'opts': {}, 'type': 'function'},
     \ ])

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
