v.nvim_command("syntax on")
v.nvim_command("filetype plugin on")

v.nvim_command("set nocompatible")
v.nvim_command("set exrc")
v.nvim_command("set noshowmatch")
v.nvim_command("set relativenumber")
v.nvim_command("set nu")
v.nvim_command("set nohlsearch")
v.nvim_command("set hidden")
v.nvim_command("set noerrorbells")
v.nvim_command("set tabstop=2 softtabstop=0 expandtab smarttab")
v.nvim_command("set laststatus=3")
v.nvim_command("set shiftwidth=2")
v.nvim_command("set mouse=a")
v.nvim_command("set smartindent")
v.nvim_command("set nowrap")
v.nvim_command("set ignorecase")
v.nvim_command("set smartcase")
v.nvim_command("set incsearch")
v.nvim_command("set termguicolors")
v.nvim_command("set scrolloff=6")
v.nvim_command("set clipboard=unnamed")
v.nvim_command("set fdm=indent") -- folding method
v.nvim_command("set nofoldenable") -- disable pre-folding
v.nvim_command("set foldlevel=10") -- fix initial folding
v.nvim_command("set encoding=utf8")
v.nvim_command("set colorcolumn=80")

v.nvim_command("set list")
v.nvim_command([[ set showbreak=↪\ ]])
v.nvim_command([[ set listchars=eol:⏎,tab:→\ ,trail:␠,nbsp:⎵,space:·,extends:⟩,precedes:⟨ ]])

-- cursorline only in focused buffer
v.nvim_command([[
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
]])

-- Spelling for English and Spanish. Not active at start
v.nvim_command("set spelllang=en_us,es")

-- Handle backup files
v.nvim_command("set noswapfile")
v.nvim_command("set nobackup")
v.nvim_command("set undodir=~/.config/nvim/undodir")
v.nvim_command("set undofile")

-- More space for displaying messages.
v.nvim_command("set cmdheight=2")

-- Don't pass messages to |ins-completion-menu|.
v.nvim_command("set shortmess+=c")
-- <Space> as leader key
v.nvim_command('let mapleader = " "')

-- Having longer update time (default is 4000 ms = 4 sec) leads to noticeable
-- delays and poor user experience.
v.nvim_command("set updatetime=300")

-- Always show tabs on top
v.nvim_command("set showtabline=2")

-- stable background
v.nvim_command("let &t_ut=''")

-- I don't know what this things are...
v.nvim_command("set t_Co=256")
vim.g.loaded_matchparen = 1
vim.g.netrw_browse_split = 2
vim.g.vrfr_rg = "true"
vim.g.netrw_banner = 1
vim.g.netrw_winsize = 15

-- Set indentation for .php, .sql, and .mysql files
v.nvim_command([[
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType sql setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType mysql setlocal shiftwidth=4 softtabstop=4 expandtab
]])

-- Remove white spaces on save
v.nvim_command([[
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()
]])

-- tsconfig.json is actually jsonc, help TypeScript set the correct filetype
v.nvim_command([[
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
]])

-- open :help menu in a vertical split
v.nvim_command("autocmd FileType help wincmd L")
