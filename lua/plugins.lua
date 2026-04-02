vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { src = "https://github.com/tpope/vim-fugitive" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/ThePrimeagen/harpoon" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/rose-pine/neovim" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
    { src = "https://github.com/akinsho/toggleterm.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig"},
    { src = "https://github.com/mason-org/mason.nvim"},
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/cmp-buffer",
    "https://github.com/hrsh7th/cmp-path",
    "https://github.com/L3MON4D3/LuaSnip",
    "https://github.com/saadparwaiz1/cmp_luasnip",
    "https://github.com/onsails/lspkind.nvim",
    "https://github.com/windwp/nvim-autopairs",
})

require("plugins.theme")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.gitsigns")
require("plugins.harpoon")
require("plugins.lualine")
require("plugins.ibl")
require("plugins.toggleterm")
require("plugins.cmp")
require("plugins.auto-pairs")
