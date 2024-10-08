return {
    "mistweaverco/kulala.nvim",
    config = function()
        require("kulala").setup()
        vim.api.nvim_set_keymap(
            "n",
            "<leader>k",
            "<cmd>lua require('kulala').jump_prev()<CR>",
            { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
            "n",
            "<leader>j",
            "<cmd>lua require('kulala').jump_next()<CR>",
            { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>lua require('kulala').run()<CR>", { noremap = true, silent = true })
    end,
    opts = {
        -- options
        icons = {
            inlay = {
                loading = "⏳",
                done = "✅",
                error = "❌",
            },
            lualine = "🐼",
        },
    },
}
