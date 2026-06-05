require("nvim-treesitter").setup({
    ensure_installed = { "c", "java", "python", "vim", "lua" },
    sync_install = false,
    auto_install = true,
    indent = { enable = true },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
