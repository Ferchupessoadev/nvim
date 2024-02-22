return {
   "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
            ensure_installed = {
                    "lua",
                    "luadoc",
                    "astro",
                    "html",
                    "javascript",
                    "typescript",
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
    },
}
