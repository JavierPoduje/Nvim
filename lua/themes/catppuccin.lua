local colors = require("catppuccin.palettes").get_palette()

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
	styles = { comments = { "italic" }, conditionals = { "italic" } },
	integrations = { treesitter = true, cmp = true, gitsigns = true, telescope = true, nvimtree = true },
	transparent_background = true,
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		--LineNr = { fg = colors.overlay1 },
	},
})

v.nvim_command("colorscheme catppuccin")
