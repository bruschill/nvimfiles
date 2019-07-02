call plug#begin()

"general
Plug 'arcticicestudio/nord-vim'
Plug 'bling/vim-airline'

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': ':CocUpdateSync' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'

"fzf
Plug 'junegunn/fzf.vim'

"tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

"ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'keith/rspec.vim'

"elixir
Plug 'elixir-editors/vim-elixir'

"javascript
Plug 'othree/yajs.vim'

call plug#end()

"colors
set background=dark
set termguicolors
colorscheme nord

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

"listchars
set nolist

"setting python
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

"setting tags directory
set tags="~/.nvim/tags"

"setting fzf directory
set rtp+=/usr/local/opt/fzf

set backupdir=~/.config/nvim/swap

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
