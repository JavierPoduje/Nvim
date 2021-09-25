-- Remove white spaces on save
vim.api.nvim_command([[
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()
]])

-- tsconfig.json is actually jsonc, help TypeScript set the correct filetype
vim.api.nvim_command([[
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
]])

function SetTheme(theme)
	if theme == "gruvbox" then
		require("themes.gruvbox")
	elseif theme == "ayu" then
		require("themes.ayu")
	elseif theme == "edge" then
		require("themes.edge")
	else
		print("No colorscheme was sourced...")
	end
end

function SetTransparentBackground(set_transparent_background)
	if set_transparent_background == 1 then
		vim.api.nvim_command([[ hi Normal ctermbg=NONE guibg=NONE ]])
	end
end
