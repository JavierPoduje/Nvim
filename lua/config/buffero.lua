local g = require("g")
require("buffero")

g.n_silent_map("<Leader>bñ", ":lua require'buffero'.open_last_closed_buffer()<CR>")
