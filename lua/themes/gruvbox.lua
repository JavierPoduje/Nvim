vim.g.gruvbox_material_palette = "material" -- 'material' | 'mix' | 'original'

vim.g.gruvbox_material_background = "soft" -- 'hard' | 'medium' (default) | 'soft'

-- Set transparent background
vim.g.gruvbox_material_transparent_background = 0

-- Finally set the color scheme
v.nvim_command("colorscheme gruvbox-material")

vim.api.nvim_command([[
  hi StatusLine ctermbg=0 cterm=NONE guibg=#1D2021
  hi StatusLineNC ctermbg=0 cterm=NONE guibg=#1D2021
]])
