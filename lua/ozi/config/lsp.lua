-- Get the names of LSP's from https://github.com/neovim/nvim-lspconfig/tree/master/lsp to enable it
local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
