return {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 100,
    opts = {
        style = "dark",
    },
    config = function(_, opts)
        require("vague").setup(opts)
        vim.cmd.colorscheme("vague")
    end,
}
