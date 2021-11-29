-- Source plugins confugurations
require("plugins_settings.bufferline.bufferline")
require("plugins_settings.bujo")
require("plugins_settings.harpoon")
require("plugins_settings.colorizer")
require("plugins_settings.emmet")
require("plugins_settings.nvim-cmp")
require("plugins_settings.formatter")
require("plugins_settings.fzf")
require("plugins_settings.galaxyline.galaxyline")
require("plugins_settings.lsp")
require("plugins_settings.lsp-diagnostics")
require("plugins_settings.lsp-saga")
require("plugins_settings.lsp-install")
require("plugins_settings.nerd-commenter")
require("plugins_settings.nvim-tree")
require("plugins_settings.startify")
require("plugins_settings.telescope.telescope")
require("plugins_settings.treesitter")
require("plugins_settings.utilsnips")

-- Deactive GitGutter commands to avoid slow <leader>+h execution
vim.g.gitgutter_map_keys = 0
