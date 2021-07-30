local saga = require('lspsaga')

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  dianostic_header_icon = '   ',
  code_action_icon = ' ',
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true,
  }
}

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', 'K', ":lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>ga', ":lua require('lspsaga.codeaction').code_action()<CR>", opts)
