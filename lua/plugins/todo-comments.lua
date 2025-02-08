---@diagnostic disable: undefined-global
return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
        require("todo-comments").setup({})

        vim.keymap.set("n", "]t", function()
            require("todo-comments").jump_next()
        end, { desc = "Next todo comment" })

        vim.keymap.set("n", "[t", function()
            require("todo-comments").jump_prev()
        end, { desc = "Previous todo comment" })

        vim.keymap.set("n", "<leader>tt", function()
            vim.cmd("TodoTelescope")
        end, { desc = "show all todo comments" })
    end,
}
