return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("utils.alpha.init")
        -- toggle alpha
        vim.keymap.set("n", "<C-A-a>", "<cmd>Alpha<CR>", { desc = "Alpha nvim" })
    end,
}
