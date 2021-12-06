local g = require("g")

vim.g.lazygit_floating_window_scaling_factor = 0.8
vim.g.lazygit_floating_window_corner_chars = { "╭", "╮", "╰", "╯" }
vim.g.lazygit_floating_window_winblend = 15

g.n_silent_map("<Leader>fg", ":LazyGit<CR>")
