syntax on
filetype plugin on

set exrc
set guicursor=
set noshowmatch
set relativenumber
set nu
set nohlsearch
set hidden " hide buffers (use ariline instead)
set noerrorbells
set tabstop=2 softtabstop=0 expandtab smarttab
set shiftwidth=2
"set mouse=a " mouse support
set smartindent
set nowrap
set smartcase
set incsearch
set termguicolors
set scrolloff=8
set clipboard=unnamed
set guifont=Fira\ Code:h12
set fdm=indent " folding method
set nofoldenable " disable pre-folding
set encoding=utf8

" Handle backup files
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

