-- [[
-- lua.plugins.lazy.plugin-table.lua
-- List of plugins for lazy-plugin manager
-- ]]

local M = {
	-- color scheme
	{
		"kepano/flexoki-neovim",
		name = "flexoki",
		priority = 1000,
		config = require("plugins.flexoki.config"),
		lazy = false,
	},
	-- utils dependency
	{
		"nvim-lua/plenary.nvim",
		lazy = false,
	},
	-- tree sitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = require("plugins.tree-sitter.config")
	},
	-- file explorer
	{
		"nvim-tree/nvim-tree.lua",
		config = require("plugins.nvim-tree.config")
	},
	-- Fuzzy Finder (files, lsp, etc)
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ -- If encountering errors, see telescope-fzf-native README for install instructions
				"nvim-telescope/telescope-fzf-native.nvim",

				-- `build` is used to run some command when the plugin is installed/updated.
				-- This is only run then, not every time Neovim starts up.
				build = "make",

				-- `cond` is a condition used to determine whether this plugin should be
				-- installed and loaded.
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },

			-- Useful for getting pretty icons, but requires special font.
			--  If you already have a Nerd Font, or terminal set up with fallback fonts
			--  you can enable this
			-- { 'nvim-tree/nvim-web-devicons' }
		},
		config = require("plugins.telescope.config"),
	},
	-- Useful plugin for pending keybindings
	{
		"folke/which-key.nvim",
		event = "VeryLazy", -- Sets the loading event to 'VeryLazy'
		config = require("plugins.which-key.config"),
	},
	-- Fuzzy Finder (files, lsp, etc)
}

return M
