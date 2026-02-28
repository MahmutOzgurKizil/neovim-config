return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = 'nvim-treesitter.configs',
    config = function()
        require('nvim-treesitter').setup {
            -- A list of parser names
            ensure_installed = { "rust", "c", "java", "vim", "lua" },
            sync_install = false,
            auto_install = true,
            indent = { enable = true, },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
