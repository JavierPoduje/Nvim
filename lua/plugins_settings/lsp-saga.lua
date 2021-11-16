local saga = require("lspsaga")
local g = require('g')

saga.init_lsp_saga({
	error_sign = "",
	warn_sign = "",
	hint_sign = "",
	infor_sign = "",
	dianostic_header_icon = "   ",
	code_action_icon = "",
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 20,
		virtual_text = true,
	},
})

g.n_silent_map("K", ":lua require('lspsaga.hover').render_hover_doc()<CR>")
g.n_silent_map("<leader>ga", ":lua require('lspsaga.codeaction').code_action()<CR>")
