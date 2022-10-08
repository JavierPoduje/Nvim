vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
	styles = { comments = { "italic" }, conditionals = { "italic" } },
	integrations = { treesitter = true, cmp = true, gitsigns = true, telescope = true, nvimtree = true },
	transparent_background = true,
})

v.nvim_command("colorscheme catppuccin")
