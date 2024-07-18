return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("tokyonight").setup({
            style = "storm",
            transparent = false,
            terminal_colors = true,
        })
        vim.cmd.colorscheme("tokyonight")
    end,
}

-- return {
--     "navarasu/onedark.nvim",
--     config = function()
--         require("onedark").setup({
--             -- Main options --
--             style = "cool", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--             transparent = false, -- Show/hide background
--             term_colors = true, -- Change terminal color as per the selected theme style
--             ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--             cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--             -- toggle theme style ---
--             toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
--
--             -- Change code style ---
--             -- Options are italic, bold, underline, none
--             -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--             code_style = {
--                 comments = "italic",
--                 keywords = "none",
--                 functions = "none",
--                 strings = "none",
--                 variables = "none",
--             },
--
--             -- Lualine options --
--             lualine = {
--                 transparent = true, -- lualine center bar transparency
--             },
--
--             -- Plugins Config --
--             diagnostics = {
--                 darker = true, -- darker colors for diagnostic
--                 undercurl = true, -- use undercurl instead of underline for diagnostics
--                 background = true, -- use background color for virtual text
--             },
--         })
--         vim.cmd([[ colorscheme onedark ]])
--     end,
-- }
