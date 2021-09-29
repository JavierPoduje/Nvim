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

-----------------------------------------------------
----------------- build panels ----------------------
-----------------------------------------------------

require("plugins_settings.galaxyline.mode_panel")
require("plugins_settings.galaxyline.filetype_panel")
require("plugins_settings.galaxyline.git_panel")
require("plugins_settings.galaxyline.lsp_panel")
require("plugins_settings.galaxyline.text_info_panel")
