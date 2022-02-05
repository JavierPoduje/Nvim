local nvim_lsp = require("lspconfig")
local g = require("g")

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
	local function buf_set_option(...)
		v.nvim_buf_set_option(bufnr, ...)
	end

	--Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
end

local servers = { "html", "graphql", "vls", "jsonls", "cssls" }
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150,
		},
		init_options = { provideFormatter = true },
	})
end

g.n_silent_map("<leader>gd", ":lua vim.lsp.buf.definition()<CR>")
g.n_silent_map("<leader>gi", ":lua vim.lsp.buf.implementation()<CR>")
g.n_silent_map("<leader>gt", ":lua vim.lsp.buf.type_definition()<CR>")
