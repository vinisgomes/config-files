vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
-- "+y" yank
-- "+p" paste
vim.o.clipboard = "unnamedplus"
-- Unhilight words
vim.keymap.set('n', '<C-l>', ':noh<CR>', { silent = true })

