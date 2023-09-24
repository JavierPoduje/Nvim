vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer manager itself
	use("wbthomason/packer.nvim")

	-- Beautification
	use("ryanoasis/vim-devicons")
	use("kyazdani42/nvim-web-devicons")

	-- Git management
	use("tpope/vim-fugitive")
	use("airblade/vim-gitgutter")
	use("kdheepak/lazygit.nvim")

	-- Debugger
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("theHamsta/nvim-dap-virtual-text")
	use("mxsdev/nvim-dap-vscode-js")
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	})

	-- Co-pilot
	use("github/copilot.vim")

	-- LSP
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"williamboman/mason.nvim",
		requires = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
	})

	-- Syntax highlight
	use("neoclide/jsonc.vim")
	use({
		"nvim-treesitter/nvim-treesitter",
		requires = "nvim-treesitter/playground",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("nvim-treesitter/nvim-treesitter-context")
	use("norcalli/nvim-colorizer.lua")

	-- Files management
	use("akinsho/nvim-bufferline.lua")
	use("nvim-lualine/lualine.nvim")
	use("mbbill/undotree")
	use("mhinz/vim-startify")
	use("javierpoduje/taboo")

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
		requires = { "junegunn/fzf.vim" },
		run = function()
			vim.fn["fzf#install()"](0)
		end,
	})
	use("jremmen/vim-ripgrep")
	use({ "kyazdani42/nvim-tree.lua", branch = "master" })
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/popup.nvim" },
			{ "nvim-telescope/telescope-fzy-native.nvim" },
			{ "romgrk/fzy-lua-native" },
			{ "sharkdp/fd" },
		},
	})
	use("ThePrimeagen/harpoon")

	-- Themes
	use("sainnhe/gruvbox-material")
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Others
	use("michaeljsmith/vim-indent-object")
	use("vuciv/vim-bujo")
	use("nvim-lua/plenary.nvim")
end)
