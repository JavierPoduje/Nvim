v.nvim_command("colorscheme nord")

vim.g.nord_vertical_split_line = 1

vim.api.nvim_command([[
  hi StatusLine ctermbg=0 cterm=NONE guibg=#3B4252
  hi StatusLineNC ctermbg=0 cterm=NONE guibg=#3B4252
]])
