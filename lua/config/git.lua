local g = require("g")

-- Git management
g.n_silent_map("<Leader>gl", ":diffget //3<CR>")
g.n_silent_map("<Leader>gh", ":diffget //2<CR>")
g.n_silent_map("<Leader>gs", ":G<CR>")
g.n_silent_map("<Leader>gb", ":Git blame<CR>")
g.n_silent_map("<Leader>gp", ":GitGutterPreviewHunk<CR>")
