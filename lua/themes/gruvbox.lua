-- OPTIONS: 'material', 'mix' or 'original'
vim.g.gruvbox_material_palette = "material"

-- OPTIONS: 'hard', 'medium' (default), 'soft'
vim.g.gruvbox_material_background = "soft"

-- Set transparent background
vim.g.gruvbox_material_transparent_background = 1

-- Finally set the color scheme
vim.api.nvim_command("colorscheme gruvbox-material")
