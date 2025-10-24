-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

--General Keymaps --

-- window management --
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window veritically" });
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" });

-- quick window jumps
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Jump to left window" });
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Jump to lower window" });
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Jump to upper window" });
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Jump to right window" });
