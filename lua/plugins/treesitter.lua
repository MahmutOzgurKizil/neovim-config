require("nvim-treesitter").setup({
    ensure_installed = { "rust", "c", "java", "vim", "lua" },
    sync_install = false,
    auto_install = true,
    indent = { enable = true },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
