return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	keys = {
		{
			"<leader>pp",
			function()
				require("telescope.builtin").git_files({ show_untracked = true })
			end,
			desc = "Telescope Git Files",
		},
		{
			"<leader>pe",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope buffers",
		},
		{
			"<leader>gs",
			function()
				require("telescope.builtin").git_status()
			end,
			desc = "Telescope Git status",
		},
		{
			"<leader>gc",
			function()
				require("telescope.builtin").git_bcommits()
			end,
			desc = "Telescope Git status",
		},
		{
			"<leader>gb",
			function()
				require("telescope.builtin").git_branches()
			end,
			desc = "Telescope Git branches",
		},
		{
			"<leader>rp",
			function()
				require("telescope.builtin").find_files({
					prompt_title = "Plugins",
					cwd = vim.fn.stdpath("config") .. "/lua/plugins",
					attach_mappings = function(_, map)
						local actions = require("telescope.actions")
						local action_state = require("telescope.actions.state")
						map("i", "<c-y>", function(prompt_bufnr)
							local new_plugin = action_state.get_current_line()
							actions.close(prompt_bufnr)
							vim.cmd(string.format("edit ~/.config/nvim/lua/plugins/%s.lua", new_plugin))
						end)
						return true
					end,
				})
			end,
		},
		{
			"<leader>pf",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope Find Files",
		},
		{
			"<leader>ph",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Telescope Help",
		},
		{
			"<leader>bb",
			function()
				require("telescope").extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
			end,
			desc = "Telescope file browser",
		},
		{
			"<leader>cs",
			function()
				require("telescope.builtin").colorscheme({ enable_preview = true })
			end,
			desc = "Telescope colorscheme",
		},
	},
}
