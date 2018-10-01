call plug#begin('~/.config/nvim/plugged')

" GENERAL
" Plug 'Shougo/deoplete.nvim', { 'commit': 'e154f3f1', 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fishbullet/deoplete-ruby'
Plug 'carlitux/deoplete-ternjs'
Plug 'zchee/deoplete-go'

" Plug 'ludovicchabant/vim-gutentags', { 'tag': 'v1.0.0' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-git'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'tomtom/tcomment_vim'

Plug 'w0rp/ale'

" STATUS LINE
Plug 'bling/vim-airline' | Plug 'vim-airline/vim-airline-themes'

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
Plug 'tpope/vim-rbenv'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'Keithbsmiley/rspec.vim'
Plug 'sunaku/vim-ruby-minitest'
Plug 'thoughtbot/vim-rspec'

" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" go
Plug 'fatih/vim-go'

" javascript
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'pangloss/vim-javascript'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'elzr/vim-json'

" markup
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-haml'

call plug#end()

let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

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
set inccommand=nosplit
set clipboard+=unnamedplus

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

"make faster for jruby
let g:ruby_path='/usr/bin/ruby'

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor

let g:vue_disable_pre_processors=1
