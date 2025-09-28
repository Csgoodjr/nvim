return {
		"nvim-tree/nvim-tree.lua",
		dependencies = {
				"nvim-tree/nvim-web-devicons",
				"ryanoasis/vim-devicons",
		},
		config = function()
				local nvimtree = require("nvim-tree")

				-- recommended settings from nvim-tree docs
				vim.g.loaded_netrw = 1
				vim.g.loaded_netrwPlugin = 1

				-- configure
				nvimtree.setup({
						view = {
								width = 35,
						},
						actions = {
								open_file = {
										window_picker = {
												enable = false,
										},
								},
						},
						filters = {
								custom = { ".DS_Store" },
						},
						git = {
								ignore = false,
						}
				})
		end,
}
