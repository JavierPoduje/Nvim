-- Source plugins confugurations
require("config.autopair")
require("config.bufferline")
require("config.bujo")
require("config.colorizer")
require("config.emmet")
require("config.formatter")
require("config.fzf")
require("config.galaxyline")
require("config.harpoon")
require("config.lazygit")
require("config.lsp")
require("config.nerd-commenter")
require("config.nvim-cmp")
require("config.nvim-tree")
require("config.startify")
require("config.telescope")
require("config.treesitter")
require("config.ultisnips")

-- Deactive GitGutter commands to avoid slow <leader>+h execution
vim.g.gitgutter_map_keys = 0
