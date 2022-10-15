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

F.browse_marks = function()
	require("telescope.builtin").marks({
		layout_strategy = "vertical",
	})
end

return F
