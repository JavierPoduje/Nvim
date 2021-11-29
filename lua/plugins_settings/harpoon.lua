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

-- add file to harpoon
g.n_silent_map("<Leader>yt", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- set goto's
--
-- Six files should be more than enough...
local chars_to_nums = {
	v = 1,
	c = 2,
	x = 3,
	f = 4,
	d = 5,
	s = 6,
}
for char, num in pairs(chars_to_nums) do
	g.n_silent_map("<Leader>y" .. char, ":lua require('harpoon.ui').nav_file(" .. tostring(num) .. ")<CR>")
end
