-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()

		require("rose-pine").setup({
			styles = {
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
			},
		})
        
		vim.cmd("colorscheme rose-pine")
	end
}
