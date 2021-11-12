local b = "require'plugins_settings.bufferline.buffero'"

local char_to_num = {
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

local config = {
	options = {
		numbers = function(opts)
			return string.format("%s", opts.raise(opts.ordinal))
		end,
		BufferLineGoToBuffer = false,
		indicator_icon = "▎",
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
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return " (" .. count .. ")"
		end,
		-- NOTE: this will be called a lot so don't do any heavy processing here
		custom_filter = function(buf_number)
			-- filter out filetypes you don't want to see
			if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
				return true
			end
			-- filter out by buffer name
			if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
				return true
			end
			-- filter out based on arbitrary rules
			-- e.g. filter out vim wiki buffer from tabline in your work repo
			if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
				return true
			end
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
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- "slant" | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = false, -- false | true,
		always_show_bufferline = true,
		sort_by = "id",
	},
}
require("bufferline").setup(config)

-- Move buffers tabs
vim.api.nvim_set_keymap("n", "<Leader>bn", ":BufferLineMoveNext<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>bp", ":BufferLineMovePrev<CR>", Opts)

-- Move between buffers
vim.api.nvim_set_keymap("n", ">", ":BufferLineCycleNext<CR>", Opts)
vim.api.nvim_set_keymap("n", "<", ":BufferLineCyclePrev<CR>", Opts)

-- Close to sides
vim.api.nvim_set_keymap("n", "<Leader>bl", ":BufferLineCloseRight<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>bh", ":BufferLineCloseLeft<CR>", Opts)

-- Move to last buffer
vim.api.nvim_set_keymap("n", "<Leader>#", ":e#<CR>", Opts)

-- Open next/previous buffer on the right using vertical split
vim.api.nvim_command("command! Vs :lua " .. b .. ".split_and_move('next')<CR>")
vim.api.nvim_command("command! VS :lua " .. b .. "('prev')<CR>")

-- Open last closed buffer
vim.api.nvim_set_keymap("n", "<Leader>bo", ":lua " .. b .. ".open_last_closed_buffer()<CR>", Opts)

-- Close current buffer
vim.api.nvim_set_keymap("n", "<Leader>dx", ":lua " .. b .. ".close_and_remember()<CR>", Opts)

-- Close all buffers except the current one
vim.api.nvim_set_keymap("n", "<Leader>bd", ":lua " .. b .. ".sweep()<CR>", Opts)

for char, buff_num in pairs(char_to_num) do
	-- go to specific buffer
	vim.api.nvim_set_keymap("n", "<Leader>x" .. char, ":BufferLineGoToBuffer " .. buff_num .. "<CR>", Opts)

	-- close specific buffer
	vim.api.nvim_set_keymap("n", "<Leader>d" .. char, ":lua " .. b .. ".close_buff_by_num(" .. buff_num .. ")<CR>", Opts)
end
