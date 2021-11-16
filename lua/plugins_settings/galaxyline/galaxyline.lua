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

require("plugins_settings.galaxyline.1_mode_panel")
require("plugins_settings.galaxyline.2_git_panel")
require("plugins_settings.galaxyline.3_lsp_panel")
require("plugins_settings.galaxyline.4_filetype_panel")
require("plugins_settings.galaxyline.5_text_info_panel")
