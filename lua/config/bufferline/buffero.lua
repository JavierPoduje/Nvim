local bufferline = require('bufferline')

local M = {
	closed = {},
}

-- Delete all buffers but the focus one
-- @return void
M.sweep = function()
	v.nvim_exec(":BufferLineCloseRight", true)
	v.nvim_exec(":BufferLineCloseLeft", true)
end

-- Split the window vertically, focus on the new one and move to `next` or
-- `prev` buffer.
-- @param direction string: `next` or `prev`, determine where to move.
-- @return void
M.split_and_move = function(direction)
	v.nvim_exec(":vs", true)
	v.nvim_exec(":wincmd l", true)
	if direction == "next" then
		v.nvim_exec(":BufferLineCycleNext", true)
	else
		v.nvim_exec(":BufferLineCyclePrev", true)
	end
end

-- FIX: this doesn't seems to work with files that belongs to another project
-- Saves the buffer to be closed and closes it
-- @return void
M.close_and_remember = function()
	local buf_path = vim.fn.bufname()
	local buf_id = vim.fn.bufnr("%")

	if buf_path ~= "" then
		M._save_and_close({ id = buf_id, path = buf_path })
	else
		vim.cmd("bd!" .. buf_id)
	end
end

-- Receive the buffer's number and execute the function `_save_and_close` over it
-- @param bufnr number: buffer's number
M.close_buff_by_num = function(bufnr)
	bufferline.buf_exec(bufnr, function(buf)
		M._save_and_close(buf)
	end)
end

-- Open the last closed buffer. If no buffer was closed, prints the message "no
-- buffer to open...".
-- This only support the buffer that were closed using the `close_and_remember`
-- method.
-- @return void
M.open_last_closed_buffer = function()
	if #M.closed == 0 then
		print("no buffer to open...")
		return
	end

	local last_closed_buf = table.remove(M.closed, #M.closed)
	v.nvim_exec(":e " .. last_closed_buf, true)
end

-- HELPERS

-- Saves the given buffer in the `closed` attr and closes it.
-- @param buf table: the buffer with its `id` and `path` -> { id: number, path: string }
M._save_and_close = function(buf)
	table.insert(M.closed, buf.path)
	vim.cmd("bd!" .. buf.id)
end

return M
