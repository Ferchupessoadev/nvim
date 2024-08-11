return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("alpha").setup(require("alpha.themes.startify").config)
        -- toggle alpha
        vim.keymap.set("n", "<C-A-a>", "<cmd>Alpha<CR>", { desc = "Alpha nvim" })
    end,
}
