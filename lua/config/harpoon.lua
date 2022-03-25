local g = require("g")

require("harpoon").setup({
	global_settings = {
		save_on_toggle = false,
		save_on_change = true,
		enter_on_sendcmd = false,
		excluded_filetypes = { "harpoon" },
	},
})

-- add file to harpoon
g.n_silent_map("<Leader>ya", ":lua require('harpoon.mark').add_file()<CR>")

-- toggle harpoon's ui
g.n_silent_map("<Leader>yt", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- navegate harpoon's files
for char, num in pairs(g.left_num_by_char) do
	g.n_silent_map("<Leader>y" .. char, ":lua require('harpoon.ui').nav_file(" .. tostring(num) .. ")<CR>")
end
