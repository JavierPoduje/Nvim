require("lspinstall").setup()

local servers = require("lspinstall").installed_servers()

local handled_from_diagnostic = { "typescript" }

local function has_value(tab, val)
	for _, value in ipairs(tab) do
		if value[1] == val then
			return true
		end
	end
	return false
end

for _, server in pairs(servers) do
	if not has_value(handled_from_diagnostic, server) then
		require("lspconfig")[server].setup({})
	end
end

-- Just don't...
vim.g.lsp_document_highlight_enabled = 0

-- disabled because it changes the styles of the diagnostics
vim.g.lsp_diagnostics_enabled = 0

vim.api.nvim_set_keymap("n", "<leader>e", ":lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", Opts)
vim.api.nvim_set_keymap("n", "<leader>[", ":lua vim.lsp.diagnostic.goto_prev()<CR>", Opts)
vim.api.nvim_set_keymap("n", "<leader>]", ":lua vim.lsp.diagnostic.goto_next()<CR>", Opts)
