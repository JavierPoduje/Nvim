require("nvim-treesitter.configs").setup({
	additional_vim_regex_highlighting = true,
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {
		"css",
		"html",
		"javascript",
		"json",
		"php",
		"python",
		"scss",
		"tsx",
		"vue",
		"yaml",
		"elixir",
	},
})
