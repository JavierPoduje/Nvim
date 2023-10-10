local g = require("g")

-- Git management
vim.api.nvim_set_keymap("n", "<Leader>gl", ":diffget //3<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>gh", ":diffget //2<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>gs", ":G<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>gb", ":Git blame<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>gp", ":GitGutterPreviewHunk<CR>", g.silent_opts())
