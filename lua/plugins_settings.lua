require("config.autopair")
require("config.bufferline")
require("config.bujo")
require("config.colorizer")
require("config.emmet")
require("config.formatter")
require("config.fzf")
require("config.git")
require("config.harpoon")
require("config.lazygit")
require("config.lspconfig")
require("config.lualine")
require("config.luasnips")
require("config.mason")
require("config.nerd-commenter")
require("config.null-ls")
require("config.nvim-cmp")
require("config.nvim-tree")
require("config.startify")
require("config.taboo")
require("config.telescope")
require("config.treesitter")
require("config.vim-gitgutter")

-- Deactive GitGutter commands to avoid slow <leader>+h execution
vim.g.gitgutter_map_keys = 0

-- Some plugin messes with the tab key, so we need to reset it
--vim.api.nvim_set_keymap("i", "<Tab>", "<Tab>", { noremap = true, silent = true })
