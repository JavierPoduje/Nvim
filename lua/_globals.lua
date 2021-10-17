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

-- avoid lsp annoying warning message...
vim = vim
