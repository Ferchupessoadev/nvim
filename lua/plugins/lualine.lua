return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
				refresh = {
					statusline = 10000,
					tabline = 10000,
					winbar = 10000,
				},
				disabled_filetypes = {
					"NvimTree",
					"help",
					"lazy",
					"mason",
					"telescope",
					"alpha",
					"",
				},
			},
			extensions = { "quickfix", "fugitive" },
			sections = {
				lualine_a = { { "mode", icon = { "", color = { fg = "#aaff12" } }, color = { fg = "#ffffff" } } },
				lualine_b = {
					{ "branch", icon = { "", color = { fg = "#ff4000" } }, color = { fg = "#ffffff" } },
					"db_ui#statusline",
				},
				lualine_c = { { "filename", file_status = true, path = 1 } },
				lualine_x = {
					"diagnostics",
					"diff",
					"encoding",
				},
				lualine_y = { "filetype" },
				lualine_z = {},
			},
			winbar = {
				lualine_a = { { "buffers", color = { fg = "#ffffff" } } },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "location" },
				lualine_z = {},
			},
			inactive_winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
