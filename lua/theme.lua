vim.api.nvim_command("highlight ColorColumn ctermbg=0 guibg=lightgrey")

vim.o.background = "dark"

SetTheme("gruvbox")

-- Statusline transparent
vim.api.nvim_command([[
hi StatusLine ctermbg=0 cterm=NONE guibg=None
hi StatusLineNC ctermbg=0 cterm=NONE guibg=None
]])
