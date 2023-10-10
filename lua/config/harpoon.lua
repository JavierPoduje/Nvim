local g = require("g")

require("harpoon").setup({
	global_settings = {
		save_on_toggle = false,
		save_on_change = true,
		enter_on_sendcmd = false,
		excluded_filetypes = { "harpoon" },
	},
	menu = {
		width = vim.api.nvim_win_get_width(0) - 20,
	},
})

-- add file
vim.api.nvim_set_keymap("n", "<Leader>ya", ":lua require('harpoon.mark').add_file()<CR>", g.silent_opts())

-- toggle ui
vim.api.nvim_set_keymap("n", "<Leader>yt", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", g.silent_opts())

-- navigate
vim.api.nvim_set_keymap("n", "<Leader>yn", ":lua require('harpoon.ui').nav_next()<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<C-PageDown>", ":lua require('harpoon.ui').nav_next()<CR>", g.silent_opts())

vim.api.nvim_set_keymap("n", "<Leader>yp", ":lua require('harpoon.ui').nav_prev()<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<C-PageUp>", ":lua require('harpoon.ui').nav_prev()<CR>", g.silent_opts())

for char, num in pairs(g.left_num_by_char) do
	vim.api.nvim_set_keymap("n", "<Leader>y" .. char, ":lua require('harpoon.ui').nav_file(" .. tostring(num) .. ")<CR>", g.silent_opts())
end
