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
	}
}

return M
