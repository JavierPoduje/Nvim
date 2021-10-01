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
			height = 0.4,
		},
	}
	require("telescope.builtin").file_browser(config)
end

finders.browse_nvim = function()
	local config = {
		results_title = "~ Nvim ~",
		cwd = "~/.config/nvim",
		previewer = false,
		prompt_title = false,
		layout_strategy = "vertical",
		layout_config = {
			width = 0.6,
			height = 0.4,
		},
	}
	require("telescope.builtin").file_browser(config)
end

finders.curr_buffer_find = function()
  local ivy_theme = require("telescope.themes").get_ivy()
  require("telescope.builtin").current_buffer_fuzzy_find(ivy_theme)
end

return finders
