return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
          				package_pending = "➜",
          				package_uninstalled = "✗",
				},
			},
		})

		mason.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- nvim
				"lua_ls",
				-- python
				"pyright",
				-- web dev
				"html",
				"tsserver",
				"cssls",
				"tailwindcss",
				"graphql",
				"dockerls",
				"docker_compose_language_service",
				-- c
				"clangd",
				"cmake",
				-- defaults
				"bashls",
				"jsonls",
				"yamlls",

			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- python
				"isort",
				"black",
				"pylint",
				-- web dev
				"eslint_d",
				"prettier",
			},
		})
	end,
}
