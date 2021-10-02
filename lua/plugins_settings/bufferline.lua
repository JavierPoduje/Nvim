require("bufferline").setup({
	options = {
		numbers = function(opts)
      --return string.format("%s", opts.raise(opts.id))

      -- TEST: use ordinal instead of id. When doing it, handle the commands
      -- that use the buffer id like :b[id], :bd[id], etc...
      return string.format("%s·%s", opts.raise(opts.ordinal), opts.lower(opts.id))
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
})

-- Move buffers tabs
vim.api.nvim_set_keymap("n", "<Leader>bn", ":BufferLineMoveNext<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>bp", ":BufferLineMovePrev<CR>", Opts)

-- Move between buffers
vim.api.nvim_set_keymap("n", ">", ":BufferLineCycleNext<CR>", Opts)
vim.api.nvim_set_keymap("n", "<", ":BufferLineCyclePrev<CR>", Opts)

-- Pick and close
vim.api.nvim_set_keymap("n", "<Leader>bd", ":BufferLinePickClose<CR>", Opts)

-- Close to sides
vim.api.nvim_set_keymap("n", "<Leader>bl", ":BufferLineCloseRight<CR>", Opts)
vim.api.nvim_set_keymap("n", "<Leader>bh", ":BufferLineCloseLeft<CR>", Opts)

for buff_idx = 1,9 do
  vim.api.nvim_command("command! B".. buff_idx .." :BufferLineGoToBuffer " .. buff_idx)
end
