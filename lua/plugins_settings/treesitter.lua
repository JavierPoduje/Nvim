require("nvim-treesitter.configs").setup({
	additional_vim_regex_highlighting = true,
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {
		"tsx",
		"php",
		"json",
		"yaml",
		"html",
		"scss",
		"css",
		"python",
		"javascript",
	},
})
