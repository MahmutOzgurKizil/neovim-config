-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()

        require("rose-pine").setup({
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
            highlight_groups = {
				NormalFloat = { bg = "overlay" },
				FloatBorder = { bg = "overlay" },
				Pmenu = { bg = "overlay" },
				PmenuSel = { bg = "highlight_med" },
				PmenuSbar = { bg = "overlay" },
				PmenuThumb = { bg = "muted" },
                CmpDocumentation = { bg = "overlay" },
                CmpDocumentationBorder = { bg = "overlay" },

                CurSearch = { fg = "base", bg = "leaf", inherit = false },
                Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },
            },
        })
        vim.cmd("colorscheme rose-pine-moon")
    end
}
