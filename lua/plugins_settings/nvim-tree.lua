local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>pv', ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>R', ':NvimTreeRefresh<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>pp', ':NvimTreeFindFile<CR>', opts)

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    -- default mappings
    vim.g.nvim_tree_bindings = {
      { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
      { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
      { key = "s",                            cb = tree_cb("vsplit") },
      { key = "v",                            cb = tree_cb("split") },
      { key = "P",                            cb = tree_cb("parent_node") },
      { key = "H",                            cb = tree_cb("toggle_dotfiles") },
      { key = "a",                            cb = tree_cb("create") },
      { key = "d",                            cb = tree_cb("remove") },
      { key = "r",                            cb = tree_cb("rename") },
      { key = "x",                            cb = tree_cb("cut") },
      { key = "c",                            cb = tree_cb("copy") },
      { key = "p",                            cb = tree_cb("paste") },
      { key = "y",                            cb = tree_cb("copy_name") },
      { key = "Y",                            cb = tree_cb("copy_path") },
      { key = "gy",                           cb = tree_cb("copy_absolute_path") },
      { key = "-",                            cb = tree_cb("dir_up") },
      { key = "q",                            cb = tree_cb("close") },
      { key = "g?",                           cb = tree_cb("toggle_help") },
    }

vim.g.nvim_tree_ignore = { '*.pyc' }
