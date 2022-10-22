local colors = require("catppuccin.palettes").get_palette("mocha")

require("catppuccin").setup({
	flavour = "mocha",
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
	},
})

v.nvim_command("colorscheme catppuccin")
