-- set python3 environment
vim.g.python3_host_prog = "/usr/bin/python3"

-- Multi-cursor exit all cursors by default
vim.g.multi_cursor_quit_key = "<C-c>"
vim.api.nvim_set_keymap("n", "<C-c>", ":call multiple_cursors#quit()<CR>", Opts)
vim.api.nvim_set_keymap("i", "<C-c>", "<ESC>", Opts)

-- Auto-pair
-- The `{}`, `()`, `[]` are disabled for jump to next line
vim.api.nvim_command(
	[[let g:AutoPairs = {'(':')//s','[':']//s','{':'}//s',"'":"'",'"':'"','```':'```','"""':'"""',"'''":"'''","`":"`"}]]
)

-- Set space as leader key
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", Opts)
vim.g.mapleader = " "

-- CTRL+C for esc
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>", Opts)

-- Delete front word in insert mode with CTRL+d
vim.api.nvim_set_keymap("i", "<C-D>", "X<Esc>ce", Opts)

-- After press * on a word or select more or more on visual mode, you can
-- replace for another word the selected for another word o string
vim.api.nvim_set_keymap("n", "<Leader>r", ":%s///g<Left><Left>", NoisyOpts)

-- Format one long line into multiple short lines
vim.api.nvim_set_keymap("n", "Q", "gq<CR>", Opts)

-- Toggle wrap
vim.api.nvim_set_keymap("n", "<Leader>ww", ":set wrap! linebreak<CR>", Opts)

-- More options for transit from normal to insert mode
vim.api.nvim_set_keymap("n", "<Leader>O", "O<Esc>O", Opts)
vim.api.nvim_set_keymap("n", "<Leader>o", "o<CR>", Opts)

-- Better window navigation
vim.api.nvim_set_keymap("n", "<Leader>k", ":wincmd k<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>l", ":wincmd l<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>j", ":wincmd j<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>h", ":wincmd h<CR>", Opts)

-- More options for paste
vim.api.nvim_set_keymap("n", "<Leader>po", "o<Esc>p", Opts)
vim.api.nvim_set_keymap("n", "<Leader>PO", "O<Esc>P", Opts)

-- Show undo tree
vim.api.nvim_set_keymap("n", "<Leader>u", ":UndotreeShow<CR>", Opts)

-- Source configuration
vim.api.nvim_set_keymap("n", "<Leader><CR>", ":so %<CR>", NoisyOpts)

-- Resize windows
vim.api.nvim_set_keymap("n", "<M-k>", ":resize +5<CR>", Opts)
vim.api.nvim_set_keymap("n", "<M-j>", ":resize -5<CR>", Opts)
vim.api.nvim_set_keymap("n", "<M-h>", ":vertical resize -5<CR>", Opts)
vim.api.nvim_set_keymap("n", "<M-l>", ":vertical resize +5<CR>", Opts)

-- Move between buffers
vim.api.nvim_set_keymap("n", ">", ":bn<CR>", Opts)
vim.api.nvim_set_keymap("n", "<", ":bp<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>#", ":e#<CR>", Opts)

-- Git management
vim.api.nvim_set_keymap("n", "<Leader>gl", ":diffget //3<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>gh", ":diffget //2<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>gs", ":G<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>gb", ":Git blame<CR>", Opts)
-- LazyGit
vim.api.nvim_set_keymap("n", "<Leader>fg", ":LazyGit<CR>", Opts)

-- Close all buffers except the current one
vim.api.nvim_set_keymap("n", "<Leader>bca", ":w<bar>%bd<bar>e#<bar>bd#<CR>", Opts)

-- Better tabbing
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", Opts)
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", Opts)

-- Move visual block up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", Opts)
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", Opts)

-- set filetype
vim.api.nvim_command("command! MD :set filetype=markdown")
vim.api.nvim_command("command! SQL :set filetype=sql")

-- Open next buffer on the right using vertical split
vim.api.nvim_command("command! VS :vs | :wincmd l | :bn")

-- Open previous buffer on the right using vertical split
vim.api.nvim_command("command! Vs :vs | :wincmd l | :bp")

-- Display window with my open buffers
vim.api.nvim_command("command! B :Buffers")

-- By default, this calls the fzf windows method. I just want to save my file...
vim.api.nvim_command("command! W  write")
