local flavour = "macchiato"
local colors = require("catppuccin.palettes").get_palette(flavour)

require("catppuccin").setup({
	flavour = flavour,
	styles = { comments = { "italic" }, conditionals = { "italic" } },
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		treesitter_context = true,
	},
	transparent_background = true,
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		TreesitterContextLineNumber = { fg = colors.sky },
		LineNr = { fg = colors.lavender },
		CursorLineNr = { fg = colors.sky, style = { "bold" } },
	},
})

v.nvim_command("colorscheme catppuccin")
