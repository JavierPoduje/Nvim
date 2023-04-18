local current_file = vim.api.nvim_buf_get_name(0)
local g = require("g")

local formatter = function(formatter, args, stdin)
	return function()
		return {
			exe = formatter,
			args = args,
			stdin = stdin,
		}
	end
end

-- Args definitions
local prettier_args = function(parser)
	return {
		--"--stdin-filepath",
		"--write",
		current_file,
		"--parser",
		parser,
		-- Personal preferences
		"--config",
		"~/Documents/Foris/EDH/.prettierrc",
		--"--config", "~/Documents/Foris/Stella/stella-new/.prettierrc.js"
		--"--config", "~/.config/nvim/.prettierrc.js"
	}
end

local php_args = {
	"--stdin-filepath",
	current_file,
	"--single-quote",
	"--print-width",
	80,
	"--parser",
	"php",
	"--php-version",
	"7.1",
	"--tab-width",
	4,
}

local sql_args = {
	"--config",
	"~/.config/nvim/sql-formatter.json",
	current_file,
}

local lua_args = {
	"--column-width",
	120,
	"--line-endings",
	"Unix",
	"--indent-type",
	"Tabs",
	"--indent-width",
	2,
	"--quote-style",
	"AutoPreferDouble",
}

local rust_args = {
	"--emit=stdout",
	"--edition=2021",
}

local python_args = {
	"%",
}

-- Actual formatter definition
require("formatter").setup({
	logging = false,
	filetype = {
		elixir = { formatter("mix format", { current_file }, false) },
		graphql = { formatter("prettier", prettier_args("graphql"), true) },
		html = { formatter("prettier", prettier_args("html"), true) },
		javascript = { formatter("prettier", prettier_args("typescript"), true) },
		javascriptreact = { formatter("prettier", prettier_args("typescript"), true) },
		json = { formatter("prettier", prettier_args("json"), true) },
		lua = { formatter("stylua", lua_args, false) },
		php = { formatter("prettier", php_args, true) },
		rust = { formatter("rustfmt", rust_args, true) },
		scss = { formatter("prettier", prettier_args("scss"), true) },
		sql = { formatter("sql-formatter", sql_args, true) },
		typescript = { formatter("prettier", prettier_args("typescript"), true) },
		typescriptreact = { formatter("prettier", prettier_args("typescript"), true) },
		python = { formatter("!black", python_args, true) },
	},
})

-- TODO: all formats should use the same command, the file type shouldn't matter...
-- format `deno` files
g.n_silent_map("<Leader>fd", ":! deno fmt % -q<CR>")

-- format every other file
g.n_silent_map("<leader>ff", ":Format<CR>")
