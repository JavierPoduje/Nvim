local g = require("g")

local filetypes = {}
if g.on_deno() then
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
end

return {
	filetypes = filetypes,
}
