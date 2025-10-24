return {
		"tpope/vim-sleuth",
		"tpope/vim-fugitive",
		"neovim/nvim-lspconfig",
		"yuezk/vim-jsx-pretty",
		{
				"williamboman/mason.nvim",
				lazy = false,
				cmd = "Mason",
				build = ":MasonUpdate",
				opts = {
						ensure_installed = {
								-- LSP Servers
								"stylua",
								"typescript-lanugage-server",
								"tailwindwcss-language-server",
								"basedpyright",
								"html-lsp",
								"css-lsp",
								-- Formatters
								"prettier",
								"black",
								"isort",
								-- Linters
								"markdownlint",
								"jsonlint",
								"spellcheck",
						}
				}
		}
}
