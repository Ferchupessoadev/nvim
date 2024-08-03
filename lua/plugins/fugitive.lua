return {
    "tpope/vim-fugitive",
    cmd = { "G", "Git" },
    keys = {
		{ "<leader>g", ":G<cr>", desc = "Git" },
        { "<leader>ga", ":Git fetch --all -p<cr>", desc = "Git fetch" },
        { "<leader>gl", ":Git pull<cr>", desc = "Git pull" },
        { "<leader>gi", ":Git init<cr>", desc = "Git init" },
    },
}
