require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	lspconfig = {
		rust = "rust_analyzer",
		lua = "lua",
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "rust_analyzer", "tsserver", "eslint", "html", "cssls", "vetur-vls" },
})
