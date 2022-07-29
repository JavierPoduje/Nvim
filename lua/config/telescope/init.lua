local g = require("g")

local telescope = require("telescope")
local sorters = require("telescope.sorters")
local previewers = require("telescope.previewers")

telescope.setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
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
		file_sorter = sorters.get_fuzzy_file,
		file_ignore_patterns = {
			"*.pyc",
			"app/webroot/bower_components",
			"app/webroot/build",
			"app/webroot/img",
			"app/webroot/legacy-tables",
			"app/webroot/tmp",
			"aws/",
			"aws/dist",
		},
		generic_sorter = sorters.get_generic_fuzzy_sorter,
		color_devicons = true,
		use_less = true,
		path_display = {},
		set_env = { ["COLORTERM"] = "truecolor" },
		file_previewer = previewers.vim_buffer_cat.new,
		grep_previewer = previewers.vim_buffer_vimgrep.new,
		qflist_previewer = previewers.vim_buffer_qflist.new,
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
		tele_tabby = {
			use_highlighter = true,
		},
	},
})

-- Set fuzzy native for hyper speed
telescope.load_extension("fzy_native")

-- Native
g.n_silent_map("<Leader>pf", ":Telescope find_files<CR>")
g.n_silent_map("<Leader>pb", ":Telescope buffers<CR>")
g.n_silent_map("<Leader>ps", ":Telescope live_grep<CR>")
g.n_silent_map("<Leader>pa", ":Telescope grep_string<CR>")

-- Customs
local F = "require'config.telescope.finders'"
g.n_silent_map("<Leader>pu", ":lua " .. F .. ".browse_utils()<CR>")
g.n_silent_map("<Leader>pn", ":lua " .. F .. ".browse_nvim()<CR>")
g.n_silent_map("<Leader>pm", ":lua " .. F .. ".browse_snippets()<CR>")
g.n_silent_map("<Leader>ph", ":lua " .. F .. ".browse_marks()<CR>")
g.n_silent_map("<Leader>pt", ":tabs<CR>")
