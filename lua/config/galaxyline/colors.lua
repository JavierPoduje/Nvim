local M = {}

local catppuccin_colors = require("catppuccin.palettes").get_palette()

M.theme_palette = function(theme)
	if theme == "gruvbox" then
		return {
			aqua = "#89B482",
			bg0 = "#1D2021",
			bg = "#32302F",
			bg2 = "#3c3836",
			blue = "#7DAEA3",
			fg = "#D4BE98",
			gray = "#928374",
			green = "#89B482",
			orange = "#E78A4E",
			purple = "#D3869B",
			red = "#EA6962",
			yellow = "#D8A657",
		}
	elseif theme == "nord" then
		return {
			aqua = "#8FBCBB",
			bg0 = "#3B4252",
			bg = "#2E3440",
			bg2 = "#3c3836",
			blue = "##5E81AC",
			fg = "#D8DEE9",
			gray = "#E5E9F0",
			green = "#A3BE8C",
			orange = "#D08770",
			purple = "#B48EAD",
			red = "#BF616A",
			yellow = "#EBCB8B",
		}
	elseif theme == "catppuccin" then
		return {
			aqua = catppuccin_colors.sky,
			bg0 = catppuccin_colors.base,
			bg = catppuccin_colors.base,
			bg2 = catppuccin_colors.base,
			blue = catppuccin_colors.blue,
			fg = catppuccin_colors.text,
			gray = catppuccin_colors.overlay0,
			green = catppuccin_colors.green,
			orange = catppuccin_colors.orange,
			purple = catppuccin_colors.mauve,
			red = catppuccin_colors.red,
			yellow = catppuccin_colors.yellow,
		}
	else -- nightfox by default
		return {
			aqua = "#63cdcf",
			bg0 = "#181c24",
			bg = "#181c24",
			bg2 = "#181c24",
			blue = "##5E81AC",
			fg = "#cdcecf",
			gray = "#526175",
			green = "#81b29a",
			orange = "#f4a261",
			purple = "#9d79d6",
			red = "#c94f6d",
			yellow = "#dbc074",
		}
	end
end

return M
