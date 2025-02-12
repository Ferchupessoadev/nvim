return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
    config = function()
        local hooks = require("ibl.hooks")

        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            for i = 1, 6 do
                vim.api.nvim_set_hl(0, "IndentBlanklineIndent" .. i, { fg = "#333333" })
            end
        end)

        require("ibl").setup({
            indent = {
                char = "│",
                tab_char = "│",
                highlight = {
                    "IndentBlanklineIndent1",
                    "IndentBlanklineIndent2",
                    "IndentBlanklineIndent3",
                    "IndentBlanklineIndent4",
                    "IndentBlanklineIndent5",
                    "IndentBlanklineIndent6",
                },
            },
        })
    end,
}
