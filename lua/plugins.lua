vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Git
	use("tpope/vim-fugitive")
	use("airblade/vim-gitgutter")
	use("kdheepak/lazygit.nvim")

	-- LSP
	use("prabirshrestha/vim-lsp")
	use("neovim/nvim-lspconfig")
	use("kabouzeid/nvim-lspinstall")
	use("glepnir/lspsaga.nvim")
	use("mattn/vim-lsp-settings")

	-- Syntax and stuff
	use("neoclide/jsonc.vim")
	use("hrsh7th/nvim-compe")
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = "nvim-treesitter/playground",
		run = ":TSUpdate",
	})
	use({
		"akinsho/nvim-bufferline.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("norcalli/nvim-colorizer.lua")

	-- Beautification
	use("ryanoasis/vim-devicons")

	-- Files manager
	use("airblade/vim-rooter")
	use({
		"glepnir/galaxyline.nvim",
		branch = "main",
		requires = { "ryanoasis/vim-devicons", opt = true },
	})

	-- Search texts and files
	use({
		"junegunn/fzf",
		run = function()
			vim.fn["fzf#install()"](0)
		end,
	})
	use("junegunn/fzf.vim")
	use("jremmen/vim-ripgrep")
	use("kyazdani42/nvim-web-devicons")
	use({
		"kyazdani42/nvim-tree.lua",
		branch = "master",
		-- Wait until they fix the issue
		commit = "b1c447946b1d0afa8f0bbd92f5a6bad0b54a3f3c",
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
	})
	use("nvim-telescope/telescope-fzy-native.nvim")

	-- Themes
	-- use 'ayu-theme/ayu-vim'
	-- use 'sainnhe/edge'
	use("sainnhe/gruvbox-material")

	-- Styles
	use("mhartington/formatter.nvim")
	use("mattn/emmet-vim")

	-- Snippets
	use({
		"SirVer/ultisnips",
		requires = { "honza/vim-snippets" },
	})

	-- Utils
	use("jiangmiao/auto-pairs")
	use("mbbill/undotree")
	use("mhinz/vim-startify")
	use("michaeljsmith/vim-indent-object")
	use("nelstrom/vim-visual-star-search")
	use("preservim/nerdcommenter")
	use("terryma/vim-multiple-cursors")
	use("tpope/vim-surround")
	use("vuciv/vim-bujo")
end)
