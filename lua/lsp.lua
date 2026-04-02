require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd" },
    automatic_enable = true,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("*", {
    capabilities = capabilities,
    root_markers = { ".git" },
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set("n", "gd",          vim.lsp.buf.definition,      opts)
        vim.keymap.set("n", "K",           vim.lsp.buf.hover,           opts)
        vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set("n", "<leader>vd",  vim.diagnostic.open_float,    opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = 1 }) end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = -1 }) end, opts)
        vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action,      opts)
        vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references,       opts)
        vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename,           opts)
        vim.keymap.set("i", "<C-s>",       vim.lsp.buf.signature_help,   opts)
    end,
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})
