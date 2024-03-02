local function debianNerdFont()
	return [[  ]]
end

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
    require("lualine").setup {
		options = {
			theme = "auto",
			icons_enabled = true,
			globalstatus = true,
		},
		extensions = { "quickfix", "fugitive" },
		sections = {
			lualine_a = { { "mode", upper = true } },
       		lualine_b = { { "branch", icon = "" }, "db_ui#statusline" },
       		lualine_c = { { "filename", file_status = true, path = 1 } },
       		lualine_x = {
       		   "diagnostics",
       		   "diff",
	   		   { debianNerdFont },
       		},
			lualine_y = {"filetype"},
			lualine_z = { "location" },
		},
		winbar = {
			lualine_a = { "buffers" },
			lualine_b = {},
        	lualine_c = {},
        	lualine_x = {},
			lualine_y = {'progress'},
        	lualine_z = {},
		},
		inactive_winbar = {
			lualine_a = {},
        	lualine_b = {},
        	lualine_c = { "filename" },
        	lualine_x = {},
        	lualine_y = {},
        	lualine_z = {},
		},
	}
	end,
}
