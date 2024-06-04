return {
	"tpope/vim-fugitive",
	cmd = { "G", "Git" },
	keys = {
		{ "<leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch" },
		{ "<leader>gl", ":Git pull<cr>", desc = "Git pull" },
		{ "<leader>gi", ":Git init<cr>", desc = "Git init" },
	},
}
