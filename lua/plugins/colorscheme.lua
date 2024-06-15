return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			-- Main options --
			style = "cool",   -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
			transparent = false, -- Show/hide background
			term_colors = true,

			-- lualine config colorscheme.
			lualine = {
				transparent = true,
			},
			-- Plugins Config --
			diagnostics = {
				darker = true, -- darker colors for diagnostic
				undercurl = true, -- use undercurl instead of underline for diagnostics
				background = true, -- use background color for virtual text
			},
		})
		vim.cmd([[colorscheme onedark]])
	end,
}
