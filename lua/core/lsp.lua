vim.lsp.enable({
		"basedpyright",
		"lua_ls",
		"ts_ls",
		"tailwindcss",
		"html_ls",
		"css_ls",
})

vim.diagnostic.config({
		virtual_text = true,
		underline = true,
		severity_sort = true,
		float = {
				border = "rounded",
				source = true,
		}
})
