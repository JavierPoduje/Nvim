M = {
	num_by_char = {
		m = 1,
		[","] = 2,
		["."] = 3,
		j = 4,
		k = 5,
		l = 6,
		u = 7,
		i = 8,
		o = 9,
	},
	left_num_by_char = {
		v = 1,
		c = 2,
		x = 3,
		f = 4,
		d = 5,
		s = 6,
		r = 7,
		e = 8,
		w = 9,
	},
}

M.set_theme = function(theme)
	require("themes." .. theme)
end

M.set_transparent_background = function(is_transparent)
  if is_transparent == 1 then
    v.nvim_command([[ hi Normal ctermbg=NONE guibg=NONE ]])
  end
end

M.i_noisy_map = function(key, action)
	v.nvim_set_keymap("i", key, action, { noremap = true, silent = false })
end
M.i_silent_map = function(key, action)
	v.nvim_set_keymap("i", key, action, { noremap = true, silent = true })
end
M.n_noisy_map = function(key, action)
	v.nvim_set_keymap("n", key, action, { noremap = true, silent = false })
end
M.n_silent_map = function(key, action)
	v.nvim_set_keymap("n", key, action, { noremap = true, silent = true })
end
M.v_noisy_map = function(key, action)
	v.nvim_set_keymap("v", key, action, { noremap = true, silent = false })
end
M.v_silent_map = function(key, action)
	v.nvim_set_keymap("v", key, action, { noremap = true, silent = true })
end

return M
