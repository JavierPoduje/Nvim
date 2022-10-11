local colors = require("catppuccin.palettes").get_palette()

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
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
