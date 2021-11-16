local g = require('g')

vim.g.ayucolor = "mirage"
vim.g.airline_theme = "ayu_mirage"
vim.g.airline_theme = "night_owl"

-- Finally set the color scheme
vim.api.nvim_command("colorscheme ayu")

g.set_transparent_background(true)
