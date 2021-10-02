vim.api.nvim_command("syntax on")
vim.api.nvim_command("filetype plugin on")

vim.api.nvim_command("set exrc")
-- "set guicursor=
vim.api.nvim_command("set noshowmatch")
vim.api.nvim_command("set relativenumber")
vim.api.nvim_command("set nu")
vim.api.nvim_command("set nohlsearch")
vim.api.nvim_command("set hidden")
vim.api.nvim_command("set noerrorbells")
vim.api.nvim_command("set tabstop=2 softtabstop=0 expandtab smarttab")
vim.api.nvim_command("set shiftwidth=2")
vim.api.nvim_command("set mouse=a") -- mouse support
vim.api.nvim_command("set smartindent")
vim.api.nvim_command("set nowrap")
vim.api.nvim_command("set ignorecase")
vim.api.nvim_command("set smartcase")
vim.api.nvim_command("set incsearch")
vim.api.nvim_command("set termguicolors")
vim.api.nvim_command("set scrolloff=8")
vim.api.nvim_command("set clipboard=unnamed")
vim.api.nvim_command("set fdm=indent") -- folding method
vim.api.nvim_command("set nofoldenable") -- disable pre-folding
vim.api.nvim_command("set encoding=utf8")
vim.api.nvim_command("set colorcolumn=80")

-- Spelling for English and Spanish. Not active at start
vim.api.nvim_command("set spelllang=en_us,es")

-- Handle backup files
vim.api.nvim_command("set noswapfile")
vim.api.nvim_command("set nobackup")
vim.api.nvim_command("set undodir=~/.config/nvim/undodir")
vim.api.nvim_command("set undofile")

-- More space for displaying messages.
vim.api.nvim_command("set cmdheight=2")

-- Don't pass messages to |ins-completion-menu|.
vim.api.nvim_command("set shortmess+=c")
-- <Space> as leader key
vim.api.nvim_command('let mapleader = " "')

-- Having longer update time (default is 4000 ms = 4 sec) leads to noticeable
-- delays and poor user experience.
vim.api.nvim_command("set updatetime=300")

-- Always show tabs on top
vim.api.nvim_command("set showtabline=2")

-- stable background
vim.api.nvim_command("let &t_ut=''")

-- I don't know what this things are...
vim.api.nvim_command("set t_Co=256")
vim.g.loaded_matchparen = 1
vim.g.netrw_browse_split = 2
vim.g.vrfr_rg = "true"
vim.g.netrw_banner = 1
vim.g.netrw_winsize = 15

-- Set indentation for .php, .sql, and .mysql files
vim.api.nvim_command([[
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType sql setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType mysql setlocal shiftwidth=4 softtabstop=4 expandtab
]])
