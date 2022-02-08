local nightfox = require("nightfox")

require("nightfox").setup({
	fox = "nightfox",
	transparent = false,
})

vim.api.nvim_command([[
  hi StatusLine ctermbg=0 cterm=NONE guibg=#181c24
  hi StatusLineNC ctermbg=0 cterm=NONE guibg=#181c24
]])

nightfox.load()
