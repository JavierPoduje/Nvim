local cmp_nvim_lsp = require("cmp_nvim_lsp")

local M = {}

M.setup = function()
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn", text = "" },
		{ name = "DiagnosticSignHint", text = "" },
		{ name = "DiagnosticSignInfo", text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	vim.diagnostic.config({
		virtual_text = true,
		signs = { active = signs },
		update_in_insert = false,
		underline = true,
		severity_sort = true,
		float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		},
	})

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
end

M.on_attach = function(client, bufnr)
	if client.name == "tsserver" then
		client.server_capabilities.document_formatting = false
	end

	local set = function(key, map)
		vim.api.nvim_buf_set_keymap(bufnr, "n", key, map, { noremap = true, silent = true })
	end

	set("<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
	set("<leader>gd", ":lua vim.lsp.buf.definition()<CR>")
	set("<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
	set("<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>")
	set("<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
	set("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
	set("<C-k>", "<cmd>lua vim.diagnostic.open_float()<CR>")
	set("<leader>[", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
	set("<leader>]", "<cmd>lua vim.diagnostic.goto_next()<CR>")
	set("<leader>gq", "<cmd>lua vim.diagnostic.setloclist()<CR>")
end

M.capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

return M
