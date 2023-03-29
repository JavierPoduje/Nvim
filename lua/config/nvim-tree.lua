local g = require("g")

local COLS = vim.o.columns
local ROWS = vim.o.lines

local float_window_width = math.floor(COLS / 2)
local float_window_height = math.floor(ROWS / 1.5)

require("nvim-tree").setup({
	system_open = {},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = { "*.pyc" },
	},
	view = {
		side = "right",
		width = 50,
		number = true,
		relativenumber = true,
		hide_root_folder = false,
		mappings = {
			list = {
				{ key = "s", action = "vsplit" },
				{ key = "v", action = "split" },
				{ key = "<C-S>", action = "system_open" },
				{ key = "<ESC>", action = "close" },
			},
		},
		float = {
			enable = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = float_window_width,
				height = float_window_height,
				row = math.floor(((ROWS - float_window_height) / 2) - 1),
				col = math.floor((COLS - float_window_width) / 2),
			},
		},
	},
})

vim.g.nvim_tree_indent_markers = 1

g.n_silent_map("<leader>pv", ":NvimTreeToggle<CR>")
g.n_silent_map("<leader>R", ":NvimTreeRefresh<CR>")
g.n_silent_map("<leader>pp", ":NvimTreeFindFileToggle<CR>")
