local g = require("g")
local B = "require'config.bufferline.buffero'"

local config = {
	options = {
		numbers = function(opts)
			return string.format("%s", opts.raise(opts.ordinal))
		end,
		BufferLineGoToBuffer = false,
		indicator_icon = " ",
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
		persist_buffer_sort = false,
		separator_style = "thick", -- "slant" | "thick" | "thin"
		enforce_regular_tabs = false, -- false | true,
		always_show_bufferline = true,
		sort_by = "id",
	},
}
require("bufferline").setup(config)

-- Move buffers tabs
g.n_silent_map("<Leader>bn", ":BufferLineMoveNext<CR>")
g.n_silent_map("<Leader>bp", ":BufferLineMovePrev<CR>")

-- Move between buffers
g.n_silent_map(">", ":BufferLineCycleNext<CR>")
g.n_silent_map("<", ":BufferLineCyclePrev<CR>")

-- Move to last buffer
g.n_silent_map("<Leader>#", ":e#<CR>")

-- Open next/previous buffer on the right using vertical split
v.nvim_command("command! Vs :lua " .. B .. ".split_and_move('next')")
v.nvim_command("command! VS :lua " .. B .. ".split_and_move('prev')")

-- Open last closed buffer
g.n_silent_map("<Leader>bñ", ":lua " .. B .. ".open_last_closed_buffer()<CR>")

-- Close current buffer
g.n_silent_map("<Leader>xd", ":lua " .. B .. ".close_and_remember()<CR>")

-- Close all buffers except the current one
g.n_silent_map("<Leader>bd", ":lua " .. B .. ".sweep()<CR>")

for char, buff_num in pairs(g.num_by_char) do
	-- go to specific buffer
	g.n_silent_map("<Leader>b" .. char, ":BufferLineGoToBuffer " .. buff_num .. "<CR>")
	-- close specific buffer
	g.n_silent_map("<Leader>x" .. char, ":lua " .. B .. ".close_buff_by_num(" .. buff_num .. ")<CR>")
end
