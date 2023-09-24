require("dapui").setup()

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<Leader>dt", ":lua require('dapui').toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>db", ":DapToggleBreakpoint<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>dc", ":DapContinue<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>dr", ":lua require('dapui').open({ reset = true })<CR>", opts)
