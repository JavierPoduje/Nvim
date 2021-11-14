local M = {
	silent_opts = { noremap = true, silent = true },
	noisy_opts = { noremap = true, silent = false },
}

M._set_mapping = function(silent_or_noisy)
	return function(keys, action)
		vim.api.nvim_set_keymap("n", keys, action, silent_or_noisy)
	end
end

M.silent_map = M._set_mapping(M.silent_opts)
M.noisy_map = M._set_mapping(M.noisy_opts)

return M
