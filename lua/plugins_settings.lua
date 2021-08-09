-- Source plugins confugurations
require('plugins_settings.bufferline')
require('plugins_settings.bujo')
require('plugins_settings.colorizer')
require('plugins_settings.compe')
require('plugins_settings.emmet')
require('plugins_settings.formatter')
require('plugins_settings.fzf')
require('plugins_settings.galaxyline')
require('plugins_settings.lsp')
require('plugins_settings.lsp-saga')
require('plugins_settings.lsp_install')
require('plugins_settings.lualine')
require('plugins_settings.nerd-commenter')
require('plugins_settings.nvim-tree')
require('plugins_settings.startify')
require('plugins_settings.telescope')
require('plugins_settings.treesitter')
require('plugins_settings.utilsnips')

-- Deactive GitGutter commands to avoid slow <leader>+h execution
vim.g.gitgutter_map_keys = 0
