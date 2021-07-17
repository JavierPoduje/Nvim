-- Options: default | aura | neon
vim.g.edge_style = 'neon' -- default | aura | neon
vim.g.edge_enable_italic = 1
vim.g.edge_disable_italic_comment = 1

-- transparent background
vim.g.edge_transparent_background = 1

vim.g.edge_cursor = 'red'
vim.g.edge_diagnostic_text_highlight = 1

vim.api.nvim_command('colorscheme edge')
