local g = require("g")

require("bufferline").setup({
	options = {
		numbers = function(opts)
			return string.format("%s", opts.raise(opts.ordinal))
		end,
		BufferLineGoToBuffer = false,
		indicator = {
			style = "icon",
		},
		modified_icon = "●",
		left_trunc_marker = "",
		right_trunc_marker = "",
		name_formatter = function(buf)
			if buf.name:match("%.md") then
				return vim.fn.fnamemodify(buf.name, ":t:r")
			end
		end,
		max_name_length = 18,
		max_prefix_length = 15,
		tab_size = 18,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count)
			return " (" .. count .. ")"
		end,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
			},
		},
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true,
		separator_style = { " ", " " }, -- "slant" | "thick" | "thin"
		enforce_regular_tabs = false, -- false | true,
		always_show_bufferline = true,
		sort_by = "id",
	},
})

-- Move buffers tabs
vim.api.nvim_set_keymap("n", "<Leader>bn", ":BufferLineMoveNext<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>bp", ":BufferLineMovePrev<CR>", g.silent_opts())

-- Move between buffers
vim.api.nvim_set_keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", g.silent_opts())

-- Move to last buffer
vim.api.nvim_set_keymap("n", "<Leader>#", ":e#<CR>", g.silent_opts())

-- Open next/previous buffer on the right using vertical split
local B = "require'config.bufferline.customization'"

v.nvim_command("command! Vs :lua " .. B .. ".split_and_move('next')")
v.nvim_command("command! VS :lua " .. B .. ".split_and_move('prev')")

vim.api.nvim_set_keymap("n", "<Leader>xd", ":bd!<CR>", g.silent_opts())
vim.api.nvim_set_keymap("n", "<Leader>bd", ":lua " .. B .. ".sweep()<CR>", g.silent_opts())

for char, buff_num in pairs(g.num_by_char) do
	-- go to specific buffer
	vim.api.nvim_set_keymap("n", "<Leader>b" .. char, ":BufferLineGoToBuffer " .. buff_num .. "<CR>", g.silent_opts())
	-- close specific buffer
	vim.api.nvim_set_keymap("n", "<Leader>x" .. char, ":lua " .. B .. ".close_buff_by_num(" .. buff_num .. ")<CR>", g.silent_opts())
end
