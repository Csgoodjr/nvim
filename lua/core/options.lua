local opt = vim.opt

-- setup line numbers --
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- turn off swapfile
opt.swapfile = false

-- always split to the right
vim.o.splitright = true

-- add borders to floats
vim.o.winborder = "rounded"
