Opts = { noremap = true, silent = true }
NoisyOpts = { noremap = true, silent = false }

-- Print inspected version of something
P = function(something)
	print(vim.inspect(something))
	return something
end

-- Delete all buffers but the one on focus
SweepBuffers = function()
	vim.api.nvim_exec(":BufferLineCloseRight", true)
	vim.api.nvim_exec(":BufferLineCloseLeft", true)
end

-- Split and move to buffers
SplitAndMoveToNextBuffer = function()
	vim.api.nvim_exec(":vs", true)
	vim.api.nvim_exec(":wincmd l", true)
	vim.api.nvim_exec(":BufferLineCycleNext", true)
end
SplitAndMoveToPrevBuffer = function()
	vim.api.nvim_exec(":vs", true)
	vim.api.nvim_exec(":wincmd l", true)
	vim.api.nvim_exec(":BufferLineCyclePrev", true)
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
-- Conver php array to json
-- TODO: identify lists properly
PhpToJson = function()
	vim.api.nvim_command([[ :%s/\%V"\s*=>\s*"/": "/ge ]])
	vim.api.nvim_command([[ :%s/\%V"\s*=>\s*\[/": {/ge ]])
	vim.api.nvim_command([[ :%s/\%V"\s*=>\s*\[/": [/ge ]])
	vim.api.nvim_command([[ :%s/\%V\[/{/ge ]])
	vim.api.nvim_command([[ :%s/\%V]/}/ge ]])
	vim.api.nvim_command([[ :%s/\%V"\s*=>\s*/": /ge ]])
end

-- avoid lsp annoying warning message...
vim = vim
