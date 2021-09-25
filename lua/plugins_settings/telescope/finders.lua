local finders = {}

finders.browse_utils = function()
	local config = {
		results_title = "~ Utils ~",
		cwd = "~/Documents/.utils/",
		previewer = false,
		prompt_title = false,
		layout_strategy = "vertical",
		layout_config = {
			width = 0.6,
			height = 0.3,
		},
	}
	require("telescope.builtin").file_browser(config)
end

return finders
