local tree_cb = require("nvim-tree.config").nvim_tree_callback
local g = require("g")

require("nvim-tree").setup({
	system_open = {},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = { "*.pyc" },
	},
	view = {
		number = true,
		relativenumber = true,
		hide_root_folder = false,
		mappings = {
			list = {
				{ key = "s", cb = tree_cb("vsplit") },
				{ key = "v", cb = tree_cb("split") },
				{ key = "<C-S>", cb = tree_cb("system_open") },
			},
		},
	},
})

vim.g.nvim_tree_indent_markers = 1

g.n_silent_map("<leader>pv", ":NvimTreeToggle<CR>")
g.n_silent_map("<leader>R", ":NvimTreeRefresh<CR>")
g.n_silent_map("<leader>pp", ":NvimTreeFindFile<CR>")
