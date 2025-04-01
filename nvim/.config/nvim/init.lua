require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.keymap.set("i", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<CapsLock>", "<Esc>", { noremap = true, silent = true })

