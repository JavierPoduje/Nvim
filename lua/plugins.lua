vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer manager itself
	use("wbthomason/packer.nvim")

	-- Git management
	use("tpope/vim-fugitive")
	use("airblade/vim-gitgutter")
	use("kdheepak/lazygit.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("tamago324/nlsp-settings.nvim")
	use("jose-elias-alvarez/null-ls.nvim")

	-- Syntax highlight
	use("neoclide/jsonc.vim")
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = "nvim-treesitter/playground",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/nvim-treesitter-context")
	use("norcalli/nvim-colorizer.lua")

	-- Beautification
	use("ryanoasis/vim-devicons")
	use("kyazdani42/nvim-web-devicons")

	-- Files management
	use("akinsho/nvim-bufferline.lua")
	use("JavierPoduje/buffero")
	use("airblade/vim-rooter")
	use("nvim-lualine/lualine.nvim")
	use("mbbill/undotree")
	use("mhinz/vim-startify")

	-- Text management
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"onsails/lspkind-nvim",
			"quangnguyen30192/cmp-nvim-ultisnips",
		},
	})
	use("jiangmiao/auto-pairs")
	use("tpope/vim-surround")
	use("terryma/vim-multiple-cursors")
	use("nelstrom/vim-visual-star-search")
	use("preservim/nerdcommenter")
	use({ "SirVer/ultisnips", requires = { "honza/vim-snippets" } })
	use("mattn/emmet-vim")
	use("mhartington/formatter.nvim")

	-- Searchers
	use({
		"junegunn/fzf",
		run = function()
			vim.fn["fzf#install()"](0)
		end,
	})
	use("junegunn/fzf.vim")
	use("jremmen/vim-ripgrep")
	use({ "kyazdani42/nvim-tree.lua", branch = "master" })
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "romgrk/fzy-lua-native" },
			{ "nvim-telescope/telescope-fzy-native.nvim" },
		},
	})
	use("ThePrimeagen/harpoon")

	-- Themes
	use("sainnhe/gruvbox-material")
	use({ "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" })
	use("EdenEast/nightfox.nvim")
	use({ "catppuccin/nvim", as = "catppuccin", run = ":CatppuccinCompile" })

	-- Others
	use("michaeljsmith/vim-indent-object")
	use("vuciv/vim-bujo")
	use("dstein64/vim-startuptime")
end)
