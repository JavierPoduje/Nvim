local F = {}

F.browse_utils = function()
	require("telescope.builtin").find_files({
		results_title = "~  Utils ~",
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

F.browse_nvim = function()
	require("telescope.builtin").find_files({
		results_title = "~ Vim ~",
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

-- FIX: this isn't working...
F.browse_snippets = function()
	require("telescope.builtin").file_browser({
		results_title = "~ 異Snippets ~",
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

F.browse_marks = function ()
  require("telescope.builtin").marks({
		layout_strategy = "vertical",
  })
end

return F
