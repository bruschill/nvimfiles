call plug#begin()

"general
Plug 'arcticicestudio/nord-vim'

"fzf
Plug 'junegunn/fzf.vim'

"tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'

"javascript
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'

call plug#end()

"colors
set background=dark                                                     " Set colorscheme background color
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

"wildmenu
"set wildmenu
"set matchtime=3
"set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
"set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
"set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
"set wildignore+=*.swp,*~,._*

"listchars
set nolist

"not sure???
"set completeopt-=preview
"set completeopt+=noinsert,noselect

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
