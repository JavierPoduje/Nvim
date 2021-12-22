local g = require("g")

-- set python3 environment
vim.g.python3_host_prog = "/usr/bin/python3"

-- Multi-cursor exit all cursors by default
vim.g.multi_cursor_quit_key = "<C-c>"
g.n_silent_map("<C-c>", ":call multiple_cursors#quit()<CR>")
-- CTRL+C for esc
g.i_silent_map("<C-c>", "<ESC><ESC>")

-- move forward in insert mode
g.i_silent_map("<C-l>", "<Right>")
-- FIX: this should be `h`, instead of `j`
g.i_silent_map("<C-j>", "<C-o>h")

-- Set space as leader key
g.n_silent_map("<Space>", "<NOP><CR>")
vim.g.mapleader = " "

-- Delete front word in insert mode with CTRL+d
g.i_silent_map("<C-D>", "X<Esc>ce")

-- After press * on a word or select more or more on visual mode, you can
-- replace for another word the selected for another word o string
g.n_noisy_map("<Leader>r", ":%s///g" .. string.rep("<Left>", 2))

-- Format one long line into multiple short lines
g.n_silent_map("Q", "gq<CR>")

-- Toggle wrap
g.n_silent_map("<Leader>ww", ":set wrap! linebreak<CR>")

-- More options for transit from normal to insert mode
g.n_silent_map("<Leader>O", "O<Esc>O")
g.n_silent_map("<Leader>o", "o<CR>")

-- Better navigation
g.n_silent_map("<Leader>k", ":wincmd k<CR>")
g.n_silent_map("<Leader>l", ":wincmd l<CR>")
g.n_silent_map("<Leader>j", ":wincmd j<CR>")
g.n_silent_map("<Leader>h", ":wincmd h<CR>")

-- Tab handlers
g.n_silent_map("<Leader>tt", ":tabnew<CR>")
g.n_silent_map("<Leader>tx", ":tabclose<CR>")
g.n_silent_map("<Leader>tn", ":tabn<CR>")
g.n_silent_map("<Leader>tp", ":tabp<CR>")
-- go to tab by number
for char, buff_num in pairs(g.num_by_char) do
	g.n_silent_map("<Leader>t" .. char, ":tabn" .. buff_num .. "<CR>")
end

-- Better mark goto commands
for char, _ in pairs(g.left_num_by_char) do
	g.n_silent_map("<Leader>m" .. char, "`" .. char .. "<CR>")
end

-- More options for paste
g.n_silent_map("<Leader>po", "o<Esc>p")
g.n_silent_map("<Leader>PO", "O<Esc>P")

-- Show undo tree
g.n_silent_map("<Leader>u", ":UndotreeShow<CR>")

-- Source configuration
g.n_noisy_map("<Leader><CR>", ":so %<CR>")

-- Resize windows
g.n_silent_map("<M-k>", ":resize +5<CR>")
g.n_silent_map("<M-j>", ":resize -5<CR>")
g.n_silent_map("<M-h>", ":vertical resize -5<CR>")
g.n_silent_map("<M-l>", ":vertical resize +5<CR>")

-- Better saving
g.n_silent_map("<Leader>s", ":silent! write<CR>")

-- Git management
g.n_silent_map("<Leader>gl", ":diffget //3<CR>")
g.n_silent_map("<Leader>gh", ":diffget //2<CR>")
g.n_silent_map("<Leader>gs", ":G<CR>")
g.n_silent_map("<Leader>gb", ":Git blame<CR>")
g.n_silent_map("<Leader>gp", ":GitGutterPreviewHunk<CR>")

-- Better tabbing
g.v_silent_map("<S-Tab>", "<gv")
g.v_silent_map("<Tab>", ">gv")

-- Move visual block up and down
g.v_silent_map("J", ":m '>+1<CR>gv=gv")
g.v_silent_map("K", ":m '<-2<CR>gv=gv")

-- By default `W` this calls the fzf's windows preview. I just want to save my file...
v.nvim_command("command! W  write")
