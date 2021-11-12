require("telescope").setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--color=always",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		prompt_prefix = "  ",
		selection_caret = " ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				width = 0.8,
				mirror = false,
				preview_width = 0.5,
				prompt_position = "top",
			},
			vertical = {
				width = 0.6,
				mirror = true,
				preview_height = 0.5,
				prompt_position = "top",
			},
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = {
			"*.pyc",
			"app/webroot/bower_components",
			"app/webroot/build",
			"app/webroot/img",
			"app/webroot/legacy-tables",
			"app/webroot/tmp",
			"aws/",
			"aws/dist",
			"node_modules",
		},
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		use_less = true,
		path_display = {},
		set_env = { ["COLORTERM"] = "truecolor" },
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

		-- Developer configurations: Not meant for general override
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
	},
})

-- Set fuzzy native for hyper speed
require("telescope").load_extension("fzy_native")

-- Telescope
vim.api.nvim_set_keymap("n", "<Leader>pf", ":Telescope find_files<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>pb", ":Telescope buffers<CR>", Opts)

-- Customs
vim.api.nvim_set_keymap("n", "<Leader>pu", ":lua require'plugins_settings.telescope.finders'.browse_utils()<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>pn", ":lua require'plugins_settings.telescope.finders'.browse_nvim()<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>pm", ":lua require'plugins_settings.telescope.finders'.browse_snippets()<CR>", Opts)
