-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

--General Keymaps --

-- window management --
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window veritically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
