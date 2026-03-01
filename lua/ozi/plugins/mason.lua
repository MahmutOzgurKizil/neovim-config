return {
    "mason-org/mason.nvim",
    dependencies = { "mason-org/mason-lspconfig.nvim" },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "v/",
                    package_pending = "->",
                    package_uninstalled = "x",
                },
            },
        })
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "clangd", "rust_analyzer" },
            automatic_enable = true,
        })
    end,
}
