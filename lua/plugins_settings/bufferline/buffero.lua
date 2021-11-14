local M = {
	closed = {},
}

-- Delete all buffers but the focus one
-- @return void
M.sweep = function()
	vim.api.nvim_exec(":BufferLineCloseRight", true)
	vim.api.nvim_exec(":BufferLineCloseLeft", true)
end

-- Split the window vertically, focus on the new one and move to `next` or
-- `prev` buffer.
-- @param direction string: `next` or `prev`, determining where to move.
-- @return void
M.split_and_move = function(direction)
	vim.api.nvim_exec(":vs", true)
	vim.api.nvim_exec(":wincmd l", true)
	if direction == "next" then
		vim.api.nvim_exec(":BufferLineCycleNext", true)
	else
		vim.api.nvim_exec(":BufferLineCyclePrev", true)
	end
end

-- FIX: this doesn't seems to work with files that belongs to another project
-- Saves the buffer to be closed and closes it
-- @return void
M.close_and_remember = function()
	local buf_path = vim.fn.bufname()
	local buf_id = vim.fn.bufnr("%")

	if buf_path ~= "" then
		M.save_and_close_({ id = buf_id, path = buf_path })
	else
		vim.cmd("bd" .. buf_id)
	end
end

-- Receive the buffer's number and execute the function `save_and_close_` over it
-- @param buf_num number: buffer's number
M.close_buff_by_num = function(buf_num)
	require("bufferline").buf_exec(buf_num, function(buf)
		M.save_and_close_(buf)
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
  vim.api.nvim_exec(":e " .. last_closed_buf, true)
end

-- HELPERS

-- Saves the given buffer in the `closed` attr and closes it.
-- @param buf table: the buffer with its `id` and `path` -> { id: number, path: string }
M.save_and_close_ = function(buf)
	table.insert(M.closed, buf.path)
	vim.cmd("bd!" .. buf.id)
end

return M
