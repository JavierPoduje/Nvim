local finders = {}

finders.browse_utils = function()
	require("telescope.builtin").file_browser({
		results_title = "~ Utils ~",
		cwd = "~/Documents/.utils/",
		previewer = false,
		prompt_title = false,
		layout_strategy = "horizontal",
		layout_config = {
			width = 0.4,
			height = 0.4,
		},
	})
end

finders.browse_nvim = function()
	require("telescope.builtin").file_browser({
		results_title = "~ Nvim ~",
		cwd = "~/.config/nvim/",
		previewer = false,
		prompt_title = false,
		layout_strategy = "vertical",
		layout_config = {
			width = 0.4,
			height = 0.4,
		},
	})
end

finders.browse_snippets = function ()
	require("telescope.builtin").file_browser({
		results_title = "~ Snippets ~",
		cwd = "~/.local/share/nvim/site/pack/packer/start/vim-snippets/UltiSnips/",
		previewer = false,
		prompt_title = false,
		layout_strategy = "vertical",
		layout_config = {
			width = 0.4,
			height = 0.4,
		},
	})
end

return finders
