return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lsconfig = require("lspconfig")

		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap

		local opts = { noremap = true, silet = true }
		
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			-- set keybindings
			opts.desc = "Go to declaration"
			keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "Smart Rename"
			keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)


		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

	end,
}
