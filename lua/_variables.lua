Opts = { noremap = true, silent = true }
NoisyOpts = { noremap = true, silent = false }

-- Print inspected version of something
P = function(something)
	print(vim.inspect(something))
	return something
end

-- avoid lsp annoying message...
vim = vim
