return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
                icons_enabled = true,
                transparent = true,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                globalstatus = false,
                winbar_component_separators = { left = " ", right = " " },
                disabled_filetypes = {
                    "help",
                    "NvimTree",
                    "lazy",
                    "toggleterm",
                    "mason",
                    "telescope",
                    "alpha",
                    "TelescopePrompt",
                },
            },
            extensions = { "quickfix", "fugitive" },
            sections = {
                lualine_a = {
                    {
                        "mode",
                        right_padding = 2,
                        icon = { "  ", color = { fg = "#11a331" } },
                    },
                },
                lualine_b = {
                    {
                        "branch",
                        right_padding = 4,
                        icon = { "", color = { fg = "#ff4000" } },
                        color = { fg = "#ffffff" },
                    },
                    "db_ui#statusline",
                },
                lualine_c = {
                    { "filename", file_status = true, path = 0 },
                },
                lualine_x = {
                    { "diagnostics", sources = { "nvim_diagnostic" } },
                    { "diff", symbols = { added = "  ", modified = " 󰝤 ", removed = "  " } },
                },
                lualine_y = {
                    {
                        "filetype",
                    },
                    {
                        "encoding",
                        left_padding = 2,
                    },
                },
                lualine_z = {
                    {},
                },
            },
        })
    end,
}
