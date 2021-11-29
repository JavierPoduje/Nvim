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
	use({ "neovim/nvim-lspconfig", commit = "a2863027c809127aca44e7519ec63a23ec0f1655" })
	use("kabouzeid/nvim-lspinstall")
	use("glepnir/lspsaga.nvim")
	use("mattn/vim-lsp-settings")

	-- SQL
	-- TODO: learn how to use this things...
	use("tpope/vim-dadbod")
	use("kristijanhusak/vim-dadbod-ui")

	-- Syntax and stuff
	use("neoclide/jsonc.vim")
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"onsails/lspkind-nvim",
			"quangnguyen30192/cmp-nvim-ultisnips",
			"kristijanhusak/vim-dadbod-completion",
		},
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = "nvim-treesitter/playground",
		run = ":TSUpdate",
	})
	use("norcalli/nvim-colorizer.lua")

	-- Beautification
	use("ryanoasis/vim-devicons")
	use("kyazdani42/nvim-web-devicons")

	-- Files manager
	use("akinsho/nvim-bufferline.lua")
	use("airblade/vim-rooter")
	use({
		"glepnir/galaxyline.nvim",
		branch = "main",
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
	use({
		"kyazdani42/nvim-tree.lua",
		branch = "master",
	})
	use({
		"nvim-telescope/telescope.nvim",
		commit = "782d802d44077e07f80189560f91c86370f11e39",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "TC72/telescope-tele-tabby.nvim" },
		},
	})
	use("nvim-telescope/telescope-fzy-native.nvim")

	-- Themes
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
	use("ThePrimeagen/harpoon")
end)
