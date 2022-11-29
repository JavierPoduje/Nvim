local null_ls = require("null-ls")
local g = require("g")

-- Initialize null_ls setup
local sources = {
	null_ls.builtins.diagnostics.flake8, -- python
}

-- Only use `eslint` if isn't a `deno` project
if not g.on_deno() then
	table.insert(sources, null_ls.builtins.diagnostics.eslint)
end

null_ls.setup({
	sources = sources,
})
