return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "storm",
            -- styles = {
            --     sidebars = "transparent",
            --     floats = "transparent",
            -- },
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}
