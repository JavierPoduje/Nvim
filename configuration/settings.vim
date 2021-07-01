syntax on
filetype plugin on

set exrc
set guicursor=
set noshowmatch
set relativenumber
set nu
set nohlsearch
set hidden " hide buffers (use airiline instead)
set noerrorbells
set tabstop=2 softtabstop=0 expandtab smarttab
set shiftwidth=2
set mouse=a " mouse support
set smartindent
set nowrap
set ignorecase
set smartcase
set incsearch
set termguicolors
set scrolloff=8
set clipboard=unnamed
"set guifont=Fira\ Code:h12
set fdm=indent " folding method
set nofoldenable " disable pre-folding
set encoding=utf8
set colorcolumn=80

" Spelling for English and Spanish. Not active at start
set spelllang=en_us,es

" Handle backup files
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" More space for displaying messages.
set cmdheight=2


" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" <Space> as leader key
let mapleader = " "

" Testing this configuraitons
set t_Co=256
" Having longer update time (default is 4000 ms = 4 sec) leads to noticeable
" delays and poor user experience.
set updatetime=300
