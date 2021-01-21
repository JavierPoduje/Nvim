syntax on
filetype plugin on

set exrc
set guicursor=
set noshowmatch
set relativenumber
set nu
set nohlsearch
set hidden " hide buffers (I use airline to see them)
set noerrorbells
set tabstop=2 softtabstop=0 expandtab smarttab
set shiftwidth=2
set mouse=a
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set clipboard=unnamed
set guifont=Fira\ Code:h12
set fdm=indent
set nofoldenable " disable pre-folding

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

