local g = require("g")

vim.g.lazygit_floating_window_scaling_factor = 0.8

vim.api.nvim_set_keymap("n", "<Leader>fg", ":LazyGit<CR>", g.silent_opts())
