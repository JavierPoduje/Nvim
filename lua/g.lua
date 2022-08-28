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

M.on_deno = function ()
  return io.open("deno.json", "r") ~= nil or io.open("deno.jsonc") ~= nil
end

M.set_theme = function(theme)
	require("themes." .. theme)
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
for _, mode in pairs({ "n", "v", "i" }) do
	for _, opt in pairs({ "silent", "noisy" }) do
		local opts = {
			silent = { noremap = true, silent = true },
			noisy = { noremap = true, silent = false },
		}
		local function_name = tostring(mode) .. "_" .. tostring(opt) .. "_map"
		M[function_name] = M._set_mapping(mode, opts[opt])
	end
end

return M
