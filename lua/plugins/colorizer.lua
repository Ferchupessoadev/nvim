return {
    "norcalli/nvim-colorizer.lua",
    event = "VeryLazy",
    config = function()
        require("colorizer").setup({
            "*", -- Highlight all files, but customize some others.
            css = { rgb_fn = true },
            astro = { rgb_fn = true },
            php = { rgb_fn = true },
            javascript = { rgb_fn = true },
            blade = { rgb_fn = true },
            typescript = { rgb_fn = true },
        })
    end,
}
