---@diagnostic disable: undefined-global
local M = {}

function M.setup()
    local lspconfig = require("lspconfig")
    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
    vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename)

    local on_attach = function(client, bufnr)
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
        vim.keymap.set("n", "<space>K", vim.lsp.buf.hover, { buffer = bufnr })
        local opts = { buffer = bufnr }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set("n", "<space>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)

        vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<C-f>", function()
            vim.lsp.buf.format({ async = true })
        end, opts)
    end

    -- if you just want default config for the servers then put them in a table
    local servers = {
        "pylsp",
        "lua_ls",
        "bashls",
        "sqlls",
        -- "ymlfmt",
        -- "arduino_language_server",
        "ts_ls",
        "astro",
        "phpactor",
        -- "intelephense",
        "emmet_language_server",
        "tailwindcss",
        "dockerls",
        "clangd",
    }

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
            on_attach = on_attach,
        })
    end

    lspconfig.phpactor.setup({
        on_attach = on_attach,
        root_dir = require("lspconfig.util").root_pattern("composer.json", ".git"),
    })

    lspconfig.ts_ls.setup({
        on_attach = on_attach,
        filetypes = { "jsx", "js", "mjs" },
    })

    lspconfig.emmet_language_server.setup({
        filetypes = {
            "html",
            "css",
            "scss",
            "javascriptreact",
            "typescriptreact",
            "astro",
            "haml",
            "xml",
            "xsl",
            "pug",
            "slim",
            "sass",
            "stylus",
            "less",
            "sss",
            "hbs",
            "handlebars",
            "php",
            "blade",
            "twig",
        },
    })
end

return M
