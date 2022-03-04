Opts = { noremap = true, silent = true }
NoisyOpts = { noremap = true, silent = false }

-- Print inspected version of something
P = function(x)
	print(vim.inspect(x))
	return x
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

-- Clean all the alphanumeric registers
WipeRegisters = function()
  for i = 34, 122 do
    local char = vim.fn.nr2char(i)
    if char:match("%w") then
      vim.fn.setreg(char, {})
    end
  end
  vim.api.nvim_command([[ :wshada! ]])
end

v = vim.api
