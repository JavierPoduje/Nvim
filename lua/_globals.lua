Opts = { noremap = true, silent = true }
NoisyOpts = { noremap = true, silent = false }

-- Print inspected version of something
P = function(something)
	print(vim.inspect(something))
	return something
end

-- Convert json to php array
JsonToPhp = function()
	vim.api.nvim_command([[ :%s/\%V":\s*\"/" => "/ge ]])
	vim.api.nvim_command([[ :%s/\%V":\s*{/" => [/ge ]])
	vim.api.nvim_command([[ :%s/\%V":\s*\[/" => [/ge ]])
	vim.api.nvim_command([[ :%s/\%V{/[/ge ]])
	vim.api.nvim_command([[ :%s/\%V}/]/ge ]])
	vim.api.nvim_command([[ :%s/\%V":\s*/" => /ge ]])
end

v = vim.api

-- avoid lsp annoying warning message...
vim = vim
