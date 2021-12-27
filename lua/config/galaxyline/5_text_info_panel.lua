local M = require("config.galaxyline.definitions")

M.insert_right({ Start = M.transparent_border })

M.insert_right({
	LineInfo = {
		provider = "LineColumn",
		separator = "  ",
		separator_highlight = { M.colors.green, M.colors.bg2 },
		highlight = { M.colors.fg, M.colors.bg2 },
	},
})

M.insert_right({
	PerCent = {
		provider = "LinePercent",
		separator = "  ",
		separator_highlight = { M.colors.blue, M.colors.bg2 },
		highlight = { M.colors.blue, M.colors.bg2, "bold" },
	},
})

M.insert_blank_line_at_right()

M.insert_right({
	Encode = {
		provider = "FileEncode",
		separator = "",
		separator_highlight = { M.colors.blue, M.colors.bg2 },
		highlight = { M.colors.blue, M.colors.bg2, "bold" },
	},
})

M.insert_blank_line_at_right()

M.insert_right({ Separa = M.transparent_border })
