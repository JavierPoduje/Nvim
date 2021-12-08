M = {}

M.num_by_char = {
	m = 1,
	[","] = 2,
	["."] = 3,
	j = 4,
	k = 5,
	l = 6,
	u = 7,
	i = 8,
	o = 9,
}

M.left_num_by_char = {
	v = 1,
	c = 2,
	x = 3,
	f = 4,
	d = 5,
	s = 6,
	r = 7,
	e = 8,
	w = 9,
}

M.set_theme = function(theme)
	if theme == "gruvbox" then
		require("themes." .. theme)
	else
		print("No colorscheme was sourced...")
	end
end

M.set_transparent_background = function(is_transparent)
	if is_transparent == 1 then
		v.nvim_command([[ hi Normal ctermbg=NONE guibg=NONE ]])
	end
end

-- Define functions for each mode and "opts volume" with the following names:
--    - i_noisy_map(keys, action)
--    - i_silent_map(keys, action)
--    - n_noisy_map(keys, action)
--    - n_silent_map(keys, action)
--    - v_noisy_map(keys, action)
--    - v_silent_map(keys, action)
M._set_mapping = function(mode, silent_or_noisy)
	return function(keys, action)
		v.nvim_set_keymap(mode, keys, action, silent_or_noisy)
	end
end
for _, mode in ipairs({ "n", "v", "i" }) do
	for _, opt in ipairs({ "silent", "noisy" }) do
		local opts = {
			silent = { noremap = true, silent = true },
			noisy = { noremap = true, silent = false },
		}
		local function_name = tostring(mode) .. "_" .. tostring(opt) .. "_map"
		M[function_name] = M._set_mapping(mode, opts[opt])
	end
end

return M
