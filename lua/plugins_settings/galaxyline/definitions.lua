local gl = require("galaxyline")
local gls = gl.section

local M = {}

-- gruvbox theme
M.colors = {
	bg = "#32302F",
	blue = "#83A598",
	deep_blue = "#458588",
	fg = "#EBDBB2",
	fg_green = "#689D6A",
	gray = "#928374",
	green = "#98971A",
	magenta = "#D3869B",
	orange = "#FE8019",
	purple = "#B16286",
	red = "#FB4934",
	yellow = "#FABD2F",
}

M.icons = {
	n = " ",
	i = " ",
	c = "ﲵ ",
	V = " ",
	[""] = " ",
	v = " ",
	C = "ﲵ ",
	R = "﯒ ",
	t = " ",
}

M.alias = {
	n = "N",
	i = "I",
	c = "C",
	V = "VL",
	[""] = "V",
	v = "V",
	C = "C",
	["r?"] = ":CONFIRM",
	rm = "--MORE",
	R = "R",
	Rv = "R&V",
	s = "S",
	S = "S",
	["r"] = "HIT-ENTER",
	[""] = "SELECT",
	t = "T",
	["!"] = "SH",
}

M.mode_color = {
	n = M.colors.yellow,
	i = M.colors.green,
	v = M.colors.blue,
	[""] = M.colors.blue,
	V = M.colors.blue,
	c = M.colors.magenta,
	no = M.colors.red,
	s = M.colors.orange,
	S = M.colors.orange,
	[""] = M.colors.orange,
	ic = M.colors.yellow,
	R = M.colors.violet,
	Rv = M.colors.violet,
	cv = M.colors.red,
	ce = M.colors.red,
	r = M.colors.blue,
	rm = M.colors.blue,
	["r?"] = M.colors.blue,
	["!"] = M.colors.red,
	t = M.colors.red,
}

--M.trailing_whitespace = function()
--  local trail = vim.fn.search("\\s$", "nw")
--  if trail ~= 0 then
--    return " "
--  else
--    return nil
--  end
--end

M.semi_circle = function(is_left)
	if is_left then
		return " "
	else
		return " "
	end
end

M.transparent_border = {
	provider = function()
		return "  "
	end,
}

M.left_border = {
	provider = function()
		return M.semi_circle(true)
	end,
	highlight = { M.colors.bg, M.colors.bg },
}

M.right_border = {
	provider = function()
		return M.semi_circle(false)
	end,
	highlight = { M.colors.bg, M.colors.bg },
}

M.space = {
	provider = function()
		return " "
	end,
	highlight = { M.colors.bg, M.colors.bg },
}

M.has_file_type = function()
	local f_type = vim.bo.filetype
	if not f_type or f_type == "" then
		return false
	end
	return true
end

M.buffer_not_empty = function()
	if vim.fn.empty(vim.fn.expand("%:t")) ~= 1 then
		return true
	end
	return false
end

M.insert_left = function(element)
	table.insert(gls.left, element)
end

M.insert_blank_line_at_left = function()
  M.insert_left({ Space = M.space })
end

M.insert_mid = function(element)
	table.insert(gls.mid, element)
end

M.insert_blank_line_at_mid = function()
	M.insert_mid({ Space = M.space })
end

M.insert_right = function(element)
	table.insert(gls.right, element)
end

M.insert_blank_line_at_right = function()
  M.insert_right({ Space = M.space })
end

M.checkwidth = function()
	local squeeze_width = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

return M
