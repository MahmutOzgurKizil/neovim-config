vim.opt.swapfile = false

require("config.lazy")
require("config.options")
require("config.lsp")

-- treesitter config
require'nvim-treesitter'.install { "rust", "c", "java", "vim", "lua" }
require'nvim-treesitter'.setup {
    install_dir = vim.fn.stdpath('data') .. '/site',
    
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

-- mason lsp
require("mason").setup()
