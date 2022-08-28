--v.nvim_command("colorscheme gruvbones")

local colors_name = "gruvbones"
vim.g.colors_name = colors_name -- Required when defining a colorscheme

local lush = require "lush"
local hsluv = lush.hsluv -- Human-friendly hsl
local util = require "zenbones.util"

local bg = vim.opt.background:get()

-- Define a palette. Use `palette_extend` to fill unspecified colors
-- Based on https://github.com/gruvbox-community/gruvbox#palette
local palette
palette = util.palette_extend({
  bg = hsluv "#32302F",
  fg = hsluv "#D4BE98",
  rose = hsluv "#EA6962",
  leaf = hsluv "#89B482",
  wood = hsluv "#D8A657",
  water = hsluv "#7DAEA3",
  blossom = hsluv "#D3869B",
  sky = hsluv "#89B482",
}, bg)

-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
	return {
		Statement { base_specs.Statement, fg = palette.rose },
		Special { fg = palette.water },
		Type { fg = palette.sky, gui = "italic" },
	}
end)

-- Pass the specs to lush to apply
lush(specs)

-- Optionally set term colors
require("zenbones.term").apply_colors(palette)
