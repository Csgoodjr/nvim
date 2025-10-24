vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit Terminal" });

return {
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
				direction = "horizontal",
		},
		keys = {
				{ "<leader>j", "<cmd>ToggleTerm size=20 direction=horizontal<cr>", desc = "Toggle Terminal" },
				{ "<leader>ft", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle Floating Terminal" },
		},
}
