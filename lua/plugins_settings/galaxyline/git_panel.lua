local M = require("plugins_settings.galaxyline.definitions")

-- Git panel
M.insert_left({
	GitIcon = {
		provider = function()
			return "  "
		end,
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = { M.colors.orange, M.colors.bg },
	},
})

M.insert_left({
	GitBranch = {
		provider = "GitBranch",
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = { M.colors.blue, M.colors.bg, "bold" },
	},
})

M.insert_blank_line_at_left()

M.insert_left({
	DiffAdd = {
		provider = "DiffAdd",
		condition = M.checkwidth,
		icon = "  ",
		highlight = { M.colors.green, M.colors.bg },
	},
})

M.insert_left({
	DiffModified = {
		provider = "DiffModified",
		condition = M.checkwidth,
		icon = "  ",
		highlight = { M.colors.orange, M.colors.bg },
	},
})

M.insert_left({
	DiffRemove = {
		provider = "DiffRemove",
		condition = M.checkwidth,
		icon = "  ",
		highlight = { M.colors.red, M.colors.bg },
	},
})

M.insert_left({
	TrailingWhiteSpace = {
		provider = M.trailing_whitespace,
		icon = "  ",
		highlight = { M.colors.yellow, M.colors.bg },
	},
})

M.insert_left({
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = { M.colors.red, M.colors.bg },
	},
})

M.insert_left({
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = { M.colors.yellow, M.colors.bg },
	},
})

M.insert_left({ Separa = M.transparent_border })
