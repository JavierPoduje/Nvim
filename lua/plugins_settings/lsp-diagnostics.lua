local nvim_lsp = require("lspconfig")

nvim_lsp.diagnosticls.setup({
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		--"css",
		--"scss",
	},
	init_options = {
		linters = {
			eslint = {
				command = "eslint",
				rootPatterns = { ".git" },
				debounce = 100,
				args = { "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
				sourceName = "eslint",
				parseJson = {
					errorsRoot = "[0].messages",
					line = "line",
					column = "column",
					endLine = "endLine",
					endColumn = "endColumn",
					message = "[eslint] ${message} [${ruleId}]",
					security = "severity",
				},
				securities = {
					[2] = "error",
					[1] = "warning",
				},
			},
		},
		filetypes = {
			javascript = "eslint",
			javascriptreact = "eslint",
			typescript = "eslint",
			typescriptreact = "eslint",
		},
	},
})

-- Just don't...
vim.g.lsp_document_highlight_enabled = 0

-- disabled because it changes the styles of the diagnostics
vim.g.lsp_diagnostics_enabled = 0

vim.api.nvim_set_keymap("n", "<leader>e", ":lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", Opts)
vim.api.nvim_set_keymap("n", "<leader>[", ":lua vim.lsp.diagnostic.goto_prev()<CR>", Opts)
vim.api.nvim_set_keymap("n", "<leader>]", ":lua vim.lsp.diagnostic.goto_next()<CR>", Opts)
