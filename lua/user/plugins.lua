local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("Error: require('packer')")
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	-- Important Plugins Here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("lewis6991/impatient.nvim") -- Speed up loading Lua modules to improve Neovim startup time

	-- Tmux & Split Window Navigation
	use("christoomey/vim-tmux-navigator")

	-- Colorschemes / Vanity Stuff
	use("rebelot/kanagawa.nvim")
	use("nvim-tree/nvim-web-devicons")
    use("goolord/alpha-nvim")

	-- Autocompletion
	use("hrsh7th/nvim-cmp") -- Completion Plugin
	use("hrsh7th/cmp-buffer") -- Buffer Completions
	use("hrsh7th/cmp-path") -- Path Completions
	use("hrsh7th/cmp-cmdline") -- Command Line Completions
	use("hrsh7th/cmp-nvim-lsp") -- LSP Completions
	use("hrsh7th/cmp-nvim-lua") -- Completions for Neovim Lua Configs

	-- Snippets
	use("L3MON4D3/LuaSnip") -- Snippet Engine
	use("saadparwaiz1/cmp_luasnip") -- Snippet Completions
	use("rafamadriz/friendly-snippets") -- A bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use({
		"williamboman/mason.nvim",
		run = ":MasonUpdate",
	}) -- Simple to use LSP installer
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim") -- For formatting and linting

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- Treesitter for better syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("HiPhish/nvim-ts-rainbow2")

	-- Autoclose Brackets
	use("windwp/nvim-autopairs")

	-- Commenting Support
	use("numToStr/Comment.nvim") -- Simple Commenting
	use("JoosepAlviste/nvim-ts-context-commentstring") -- For JSX Support

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Nvim-Tree
	use("nvim-tree/nvim-tree.lua")

	-- Bufferline: buffers at top
	use("akinsho/bufferline.nvim")
	use("moll/vim-bbye")

	-- Lualine: status line at bottom
	use("nvim-lualine/lualine.nvim")

	-- Indent lines
	use("lukas-reineke/indent-blankline.nvim")

	-- Latex
	use("lervag/vimtex")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
