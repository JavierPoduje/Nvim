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

F.get_visual_selection = function()
    local _, start_line, start_col, _ = unpack(vim.fn.getpos("'<"))
    local _, end_line, end_col, _ = unpack(vim.fn.getpos("'>"))
    local lines = vim.fn.getline(start_line, end_line)
    if start_line ~= end_line then
        lines[#lines] = string.sub(lines[#lines], 1, end_col - 1)
        lines[1] = string.sub(lines[1], start_col)
    else
        lines[1] = string.sub(lines[1], start_col, end_col - 1)
    end
    return table.concat(lines, '\n')
end

return F
