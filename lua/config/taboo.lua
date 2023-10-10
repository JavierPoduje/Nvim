local g = require("g")

require("taboo")
vim.api.nvim_set_keymap("n", "<Leader>tt", ":TabooOpen<CR>", g.silent_opts())
