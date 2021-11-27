local cmp = require("cmp")
local cmp_lsp = require("cmp_nvim_lsp")
local lsp = require("lspconfig")
local lspkind = require("lspkind")

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

	documentation = {
		border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
	},

	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "ultisnips" },
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
				nvim_lsp = "[lsp]",
				nvim_lua = "[api]",
				path = "[path]",
				ultisnips = "[snips]",
			},
		}),
	},

	experimental = {
		native_menu = false,
		ghost_text = true,
	},
})

lsp.vimls.setup({
	capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
})

-- completion for command line
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path", keyword_length = 2 },
	}, {
		{ name = "cmdline", keyword_length = 2 },
	}),
})

-- completion for sql files. not working just yet...
vim.cmd([[
augroup DadbodSql
  au!
  autocmd FileType sql,mysql,psql lua require('cmp').setup.buffer { sources = { { name = 'vim-dadbod-completion' } } }
augroup end
]])
