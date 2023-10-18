local g = require("g")

-- set python3 environment
vim.g.python3_host_prog = "/usr/bin/python3"

-- Multi-cursor exit all cursors by default
vim.g.multi_cursor_quit_key = "<C-c>"
vim.api.nvim_set_keymap("n", "<C-c>", ":call multiple_cursors#quit()<CR>", g.silent_opts())
-- CTRL+C for esc
vim.api.nvim_set_keymap("i", "<C-c>", "<ESC><ESC>", g.silent_opts())

-- more comfortable yanking
vim.api.nvim_set_keymap("n", "<Leader>yy", 'V"+y', g.silent_opts())
vim.api.nvim_set_keymap("v", "<Leader>yy", '"+y', g.silent_opts())

-- move forward in insert mode
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", g.silent_opts())
vim.api.nvim_set_keymap("i", "<C-j>", "<C-o>h", g.silent_opts())

-- Set space as leader key
vim.api.nvim_set_keymap("n", "<Space>", "<NOP><CR>", g.silent_opts())

-- Delete front word in insert mode with CTRL+d
vim.api.nvim_set_keymap("i", "<C-D>", "X<Esc>ce", g.silent_opts())

-- Replace all instances of the word under cursor
vim.api.nvim_set_keymap("n", "<Leader>r", ":%s/\\<<C-r><C-w>\\>/", g.noisy_opts())

-- Paste but remember
vim.keymap.set("x", "<Leader>fp", '"_dP')

-- Format one long line into multiple short lines
vim.api.nvim_set_keymap("n", "Q", "gq<CR>", g.silent_opts())

vim.keymap.set("n", "J", "mzJ`z")

-- Toggle wrap
vim.api.nvim_set_keymap("n", "<Leader>ww", ":set wrap! linebreak<CR>", g.silent_opts())

-- More options for transit from normal to insert mode
vim.api.nvim_set_keymap("n", "<Leader>O", "O<Esc>O", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>o", "o<CR>", g.silent_opts())

-- for JS/Typescript, set all "." to "?." in VISUAL MODE
vim.api.nvim_set_keymap("v", "<Leader>?", "<ESC><cmd>'<,'>substitute/\\./?./g<CR>", g.silent_opts())

-- Better navigation
vim.api.nvim_set_keymap("n", "<Leader>k", ":wincmd k<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>l", ":wincmd l<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>j", ":wincmd j<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>h", ":wincmd h<CR>", g.silent_opts())

-- Keep it centered
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", g.silent_opts())
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", g.silent_opts())

-- Tab handlers
vim.api.nvim_set_keymap("n", "<Leader>tx", ":tabclose<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>tn", ":tabn<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>tp", ":tabp<CR>", g.silent_opts())
-- go to tab by number
for char, buff_num in pairs(g.num_by_char) do
	vim.api.nvim_set_keymap("n", "<Leader>t" .. char, ":tabn" .. buff_num .. "<CR>", g.silent_opts())
end

-- Better marks
for char, _ in pairs(g.left_num_by_char) do
	vim.api.nvim_set_keymap("n", "m" .. char, "m" .. char:upper(), g.silent_opts())
	vim.api.nvim_set_keymap("n", "<Leader>m" .. char, "`" .. char:upper() .. "<CR>", g.silent_opts())
end

-- Navigate quickfix list
vim.api.nvim_set_keymap("n", "<Leader>cl", ":cnext<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>ch", ":cprev<CR>", g.silent_opts())

-- More options for paste
vim.api.nvim_set_keymap("n", "<Leader>po", "o<Esc>p", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>PO", "O<Esc>P", g.silent_opts())

-- Show undo tree
vim.api.nvim_set_keymap("n", "<Leader>u", ":UndotreeShow<CR>", g.silent_opts())

-- Source configuration
vim.api.nvim_set_keymap("n", "<Leader><CR>", ":so %<CR>", g.noisy_opts())

-- Resize windows
vim.api.nvim_set_keymap("n", "<S-Up>", ":resize +5<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<S-Down>", ":resize -5<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<S-Right>", ":vertical resize -5<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<S-Left>", ":vertical resize +5<CR>", g.silent_opts())

-- Better saving
vim.api.nvim_set_keymap("n", "<Leader>s", ":write<CR>", g.silent_opts())

-- Better tabbing
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", g.silent_opts())
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", g.silent_opts())

-- Move visual block up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", g.silent_opts())
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", g.silent_opts())

-- By default `W` this calls the fzf's windows preview. I just want to save my file...
v.nvim_command("command! W  write")

-- Netrw
vim.api.nvim_set_keymap("n", "<Leader>pe", ":Vex<CR>", g.silent_opts())
