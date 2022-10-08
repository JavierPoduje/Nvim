local gl = require("galaxyline")

gl.short_line_list = {
	"LuaTree",
	"vista",
	"dbui",
	"startify",
	"term",
	"nerdtree",
	"fugitive",
	"fugitiveblame",
	"plug",
}

require("config.galaxyline.1_git_panel")
require("config.galaxyline.2_filetype_panel")
require("config.galaxyline.3_lsp_panel")
require("config.galaxyline.4_text_info_panel")
