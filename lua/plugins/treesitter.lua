return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "lua",
            "luadoc",
            "html",
            "css",
            "astro",
            "javascript",
            "typescript",
            "php",
            "tsx",
            "json",
            "vim",
            "vimdoc",
            "markdown",
            "c",
            "bash",
            "python",
            "sql",
            -- "arduino",
            "cpp",
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@conditional.outer",
                    ["ic"] = "@conditional.inner",
                    ["al"] = "@loop.outer",
                    ["il"] = "@loop.inner",
                },
            },
        },
        selection_modes = {
            ["@function.outer"] = "V", -- linewise
            ["@function.inner"] = "V", -- linewise
            ["@conditional.outer"] = "V",
            ["@conditional.inner"] = "V",
            ["@loop.outer"] = "V",
            ["@loop.inner"] = "V",
        },
    },
}
