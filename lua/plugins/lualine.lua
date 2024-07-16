return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark",
				icons_enabled = true,
				component_separators = "",
				section_separators = { left = " ", right = " " },
				globalstatus = true,
				disabled_filetypes = {
					"NvimTree",
					"help",
					"lazy",
					"mason",
					"telescope",
					"alpha",
					"",
					"TelescopePrompt",
				},
			},
			extensions = { "quickfix", "fugitive" },
			sections = {
				lualine_a = {
					{
						"mode",
						separator = { left = "" },
						icon = { "", color = { fg = "#ffffff" } },
						color = { fg = "#ffffff" },
					},
				},
				lualine_b = {
					{
						"branch",
						separator = { right = "" },
						right_padding = 4,
						icon = { "", color = { fg = "#ff4000" } },
						color = { fg = "#ffffff" },
					},
					"db_ui#statusline",
				},
				lualine_c = {
					{ "filename", file_status = true, path = 1 },
				},
				lualine_x = {
					{ "diagnostics" },
					{ "diff", symbols = { added = " ", modified = "󰝤 ", removed = " " } },
				},
				lualine_y = {
					{ [[ "Debian" ]], separator = { left = "" }, icon = { " ", color = { fg = "#ff0033" } } },
					"filetype",
				},
				lualine_z = { { "location", separator = { right = "" }, left_padding = 4 } },
			},
			winbar = {
				lualine_a = { { "buffers" } },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
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
