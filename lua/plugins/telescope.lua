return {
		"nvim-telescope/telescope.nvim",
		dependencies = {
				"nvim-lua/plenary.nvim",
				{"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
				"nvim-tree/nvim-web-devicons",
		},
		config = function()
				local telescope = require("telescope")
				local actions = require("telescope.actions")

				telescope.setup({
						defaults = {
								path_display = {"truncate"},
								mappings = {
										i = {
												["<C-k>"] = actions.move_selection_previous, -- move to prev result
												["<C-j>"] = actions.move_selection_next, -- move to next result
												["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
												["<esc>"] = actions.close, -- close on first esc
										},
								},
						},
				})

				telescope.load_extension("fzf")

				-- set keymaps 
				local builtin = require("telescope.builtin");
				-- find what you're looking for
				vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Fuzzy find files in cwd"});
				vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {desc = "Fuzzy find recent files"});
				vim.keymap.set("n", "<leader>fs", builtin.live_grep, {desc = "Find string in cwd"});
				vim.keymap.set("n", "<leader>fc", builtin.grep_string, {desc = "Find string under cursor in cwd"});
				-- find code references
				vim.keymap.set("n", "gd", builtin.lsp_definitions, { silent = true, noremap = true, desc = "Go to defintion" });
				vim.keymap.set("n", "gr", builtin.lsp_references, { silent = true, noremap = true, desc = "Go to reference" });
				vim.keymap.set("n", "gi", builtin.lsp_implementations, { silent = true, noremap = true, desc = "Go to impl" });
		end,
}
