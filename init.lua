vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("options")
require("plugins")
require("lsp")
require("keymaps")

vim.pack.update()
