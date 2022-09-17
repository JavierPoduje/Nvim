local g = require("g")

-- if an empty table is given, the server triggers anyway.
local filetypes = { "dummy" }
if not g.on_deno() then
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
end

return {
	filetypes = filetypes,
}
