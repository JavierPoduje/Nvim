local lspkind = require("lspkind")
lspkind.init()

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<c-space>"] = cmp.mapping.complete(),
	},

	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "ultisnips" },
		{ name = "gh_issues" },
		{ name = "path" },
		{ name = "buffer" },
	},

	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body)
		end,
	},

	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				nvim_lua = "[api]",
				path = "[path]",
				ultisnips = "[snips]",
				gh_issues = "[issues]",
			},
		}),
	},


  experimental = {
    native_menu = false,
    ghost_text = true,
  },
})

local lsp = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')
lsp.vimls.setup({
  capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
})
