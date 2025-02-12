return {
    "adalessa/laravel.nvim",
    dependencies = {
        "tpope/vim-dotenv",
        "nvim-telescope/telescope.nvim",
        "MunifTanjim/nui.nvim",
        "kevinhwang91/promise-async",
    },
    cmd = { "Laravel" },
    keys = {
        { "<leader>lss", "<cmd>Laravel serve start<cr>", desc = "Laravel serve start" },
        { "<leader>lsp", "<cmd>Laravel serve stop<cr>", desc = "Laravel serve stop" },
        { "<leader>lm", "<cmd>Laravel make<cr>", desc = "Laravel make picker" },
        { "<leader>lrs", "<cmd>Laravel resources<cr>", desc = "Laravel resources" },
        { "<leader>lr", "<cmd>Laravel routes<cr>", desc = "Laravel routes" },
        { "<leader>lgf", "<cmd>Laravel gf<cr>", desc = "Laravel gf" },
    },
    event = "BufReadPost",
    opts = {},
    config = true,
}
