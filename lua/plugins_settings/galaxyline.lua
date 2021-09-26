local gl = require("galaxyline")
local gls = gl.section

gl.short_line_list = {
	"LuaTree",
	"vista",
	"dbui",
	"startify",
	"term",
	"nerdtree",
	"fugitive",
	"fugitiveblame",
	"plug",
}

local colors = {
	bg = "#32302F",
	blue = "#83A598",
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

local function trailing_whitespace()
	local trail = vim.fn.search("\\s$", "nw")
	if trail ~= 0 then
		return " "
	else
		return nil
	end
end

local semi_circle = function(is_left)
	if is_left then
		return " "
	else
		return " "
	end
end

local transparent_border = {
	provider = function()
		return "  "
	end,
}

local left_border = {
	provider = function()
		return semi_circle(true)
	end,
	highlight = { colors.yellow },
}

local right_border = {
	provider = function()
		return semi_circle(false)
	end,
	highlight = { colors.blue },
}

local space = {
	provider = function()
		return " "
	end,
	highlight = { colors.bg, colors.bg },
}

TrailingWhiteSpace = trailing_whitespace

function has_file_type()
	local f_type = vim.bo.filetype
	if not f_type or f_type == "" then
		return false
	end
	return true
end

local buffer_not_empty = function()
	if vim.fn.empty(vim.fn.expand("%:t")) ~= 1 then
		return true
	end
	return false
end

-- insert_left insert item at the left panel
local function insert_left(element)
	table.insert(gls.left, element)
end

-- insert_blank_line_at_left insert blank line with
-- bg color.
local function insert_blank_line_at_left()
	insert_left({ Space = space })
end

-- insert_right insert given item into galaxyline.right
local function insert_right(element)
	table.insert(gls.right, element)
end

-- insert_blank_line_at_left insert blank line with
-- bg color.
local function insert_blank_line_at_right()
	insert_right({ Space = space })
end

local checkwidth = function()
	local squeeze_width = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

-----------------------------------------------------
----------------- build panels ----------------------
-----------------------------------------------------

-- Mode Panel
insert_left({ Start = transparent_border })

insert_blank_line_at_left()

insert_left({
	ViMode = {
		icon = function()
			local icons = {
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
			return icons[vim.fn.mode()]
		end,
		provider = function()
			-- auto change color according the vim mode
			local alias = {
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
			local mode_color = {
				n = colors.yellow,
				i = colors.green,
				v = colors.blue,
				[""] = colors.blue,
				V = colors.blue,
				c = colors.magenta,
				no = colors.red,
				s = colors.orange,
				S = colors.orange,
				[""] = colors.orange,
				ic = colors.yellow,
				R = colors.violet,
				Rv = colors.violet,
				cv = colors.red,
				ce = colors.red,
				r = colors.blue,
				rm = colors.blue,
				["r?"] = colors.blue,
				["!"] = colors.red,
				t = colors.red,
			}

			local vim_mode = vim.fn.mode()
			vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_color[vim_mode])
			return alias[vim_mode]
		end,
		highlight = { colors.bg, colors.bg },
	},
})

insert_blank_line_at_left()

insert_left({ Separa = transparent_border })

-- Information panel
insert_left({ Start = transparent_border })

insert_left({
	FileIcon = {
		provider = "FileIcon",
		condition = buffer_not_empty,
		highlight = { require("galaxyline.provider_fileinfo").get_file_icon_color, colors.bg },
	},
})

insert_left({
	BufferType = {
		provider = "FileTypeName",
		condition = has_file_type,
		highlight = { colors.fg, colors.bg },
	},
})

insert_blank_line_at_left()

insert_left({
	GitIcon = {
		provider = function()
			return "  "
		end,
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = { colors.orange, colors.bg },
	},
})

insert_left({
	GitBranch = {
		provider = "GitBranch",
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = { colors.blue, colors.bg, "bold" },
	},
})

insert_blank_line_at_left()

insert_left({
	DiffAdd = {
		provider = "DiffAdd",
		condition = checkwidth,
		icon = "  ",
		highlight = { colors.green, colors.bg },
	},
})

insert_left({
	DiffModified = {
		provider = "DiffModified",
		condition = checkwidth,
		icon = "  ",
		highlight = { colors.orange, colors.bg },
	},
})

insert_left({
	DiffRemove = {
		provider = "DiffRemove",
		condition = checkwidth,
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
})

insert_left({
	TrailingWhiteSpace = {
		provider = TrailingWhiteSpace,
		icon = "  ",
		highlight = { colors.yellow, colors.bg },
	},
})

insert_left({
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
})

insert_left({
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = { colors.yellow, colors.bg },
	},
})

insert_left({ Separa = transparent_border })

-- Last Panel (?)
insert_right({ Start = transparent_border })

insert_blank_line_at_right()

insert_right({
	FileFormat = {
		provider = "FileFormat",
		highlight = { colors.fg, colors.bg, "bold" },
	},
})

insert_blank_line_at_right()

insert_right({
	LineInfo = {
		provider = "LineColumn",
		separator = "  ",
		separator_highlight = { colors.green, colors.bg },
		highlight = { colors.fg, colors.bg },
	},
})

insert_right({
	PerCent = {
		provider = "LinePercent",
		separator = "  ",
		separator_highlight = { colors.blue, colors.bg },
		highlight = { colors.blue, colors.bg, "bold" },
	},
})

insert_blank_line_at_right()

insert_right({
	Encode = {
		provider = "FileEncode",
		separator = "  ",
		separator_highlight = { colors.blue, colors.bg },
		highlight = { colors.blue, colors.bg, "bold" },
	},
})

insert_blank_line_at_right()

insert_right({ Separa = transparent_border })

-- {"mode":"full","isActive":false}
