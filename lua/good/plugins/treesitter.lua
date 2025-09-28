-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Or a function that calls TSUpdate
  opts = function(_, opts)
    -- Add more languages as needed
    opts.ensure_installed = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "prisma",
      "markdown",
      "markdown_inline",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
    }

    -- Enable highlighting and indentation
    opts.highlight = { enable = true }
    opts.indent = { enable = true }

    -- Other configuration options (e.g., textobjects, incremental_selection) can be added here
  end,
}


