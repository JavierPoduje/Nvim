local nightfox = require("nightfox")

nightfox.setup({
  options = {
    transparent = true,
  }
})

vim.api.nvim_command([[
  hi StatusLine ctermbg=0 cterm=NONE guibg=#181c24
  hi StatusLineNC ctermbg=0 cterm=NONE guibg=#181c24
]])

v.nvim_command("colorscheme nightfox")
