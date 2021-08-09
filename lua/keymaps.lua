local opts = { noremap = true, silent = true }
local noisy_opts = { noremap = true, silent = false }

-- set python3 environment
vim.g.python3_host_prog = "/usr/bin/python3"

-- Multi-cursor exit all cursors by default
vim.g.multi_cursor_quit_key = '<C-c>'
vim.api.nvim_set_keymap('n', '<C-c>', ':call multiple_cursors#quit()<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-c>', '<ESC>', opts)

-- Auto-pair
-- The `{}`, `()`, `[]` are disabled for jump to next line
vim.api.nvim_command([[let g:AutoPairs = {'(':')//s','[':']//s','{':'}//s',"'":"'",'"':'"','```':'```','"""':'"""',"'''":"'''","`":"`"}]])

-- Set space as leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = " "

-- CTRL+C for esc
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>', opts)

-- Delete front word in insert mode with CTRL+d
vim.api.nvim_set_keymap('i', '<C-D>', 'X<Esc>ce', opts)

-- After press * on a word or select more or more on visual mode, you can
-- replace for another word the selected for another word o string
vim.api.nvim_set_keymap('n', '<Leader>r', ':%s///g<Left><Left>', noisy_opts)

-- Format one long line into multiple short lines
vim.api.nvim_set_keymap('n', 'Q', 'gq<CR>', opts)

-- Toggle wrap
vim.api.nvim_set_keymap('n', '<Leader>ww', ':set wrap! linebreak<CR>', opts)

-- More options for transit from normal to insert mode
vim.api.nvim_set_keymap('n', '<Leader>O', 'O<Esc>O', opts)
vim.api.nvim_set_keymap('n', '<Leader>o', 'o<CR>', opts)

-- Better window navigation
vim.api.nvim_set_keymap('n', '<Leader>k', ':wincmd k<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>l', ':wincmd l<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>j', ':wincmd j<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>h', ':wincmd h<CR>', opts)

-- More options for paste
vim.api.nvim_set_keymap('n', '<Leader>po', 'o<Esc>p', opts)
vim.api.nvim_set_keymap('n', '<Leader>PO', 'O<Esc>P', opts)

-- Show undo tree
vim.api.nvim_set_keymap('n', '<Leader>u', ':UndotreeShow<CR>', opts)

-- Source configuration
vim.api.nvim_set_keymap('n', '<Leader><CR>', ':so ~/.config/nvim/init.lua<CR>', noisy_opts)

-- Resize windows
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +5<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -5<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -5<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +5<CR>', opts)

-- Move between buffers
vim.api.nvim_set_keymap('n', '>', ':bn<CR>', opts)
vim.api.nvim_set_keymap('n', '<', ':bp<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>#', ':e#<CR>', opts)

-- Git management
vim.api.nvim_set_keymap('n', '<Leader>gl', ':diffget //3<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gh', ':diffget //2<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gs', ':G<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gb', ':Git blame<CR>', opts)
-- LazyGit
vim.api.nvim_set_keymap('n', '<Leader>fg', ':LazyGit<CR>', opts)

-- Close all buffers except the current one
vim.api.nvim_set_keymap('n', '<Leader>bca', ':w<bar>%bd<bar>e#<bar>bd#<CR>', opts)

-- Better tabbing
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', opts)
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', opts)

-- Move visual block up and down
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- set filetype
vim.api.nvim_command('command! MD :set filetype=markdown')
vim.api.nvim_command('command! SQL :set filetype=sql')

-- Open next buffer on the right using vertical split
vim.api.nvim_command('command! VS :vs | :wincmd l | :bn')

-- Open previous buffer on the right using vertical split
vim.api.nvim_command('command! Vs :vs | :wincmd l | :bp')

-- Display window with my open buffers
vim.api.nvim_command('command! B :Buffers')

-- By default, this calls the fzf windows method. I just want to save my file...
vim.api.nvim_command('command! W  write')
