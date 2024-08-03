return {
    "stevearc/conform.nvim",
    event = {},
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                astro = { "prettier" },
                php = { "php-cs-fixer" },
                javascript = { "prettierd" },
                typescript = { "prettierd" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                css = { "prettierd" },
                html = { "prettierd" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
                arduino = { "clangd" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 10000,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
