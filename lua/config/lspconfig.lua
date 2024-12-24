---@diagnostic disable
local M = {}

function M.on_attach(client, bufnr)
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Mapas básicos
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
end

local cmp_nvim_lsp = require("cmp_nvim_lsp")
M.capabilities = cmp_nvim_lsp.default_capabilities()

-- Configuración específica de servidores
function M.setup_custom_servers()
    local lspconfig = require("lspconfig")

    lspconfig.phpactor.setup({
        on_attach = M.on_attach,
        capabilities = M.capabilities,
        root_dir = require("lspconfig.util").root_pattern("composer.json", ".git"),
    })

    lspconfig.tsserver.setup({
        on_attach = M.on_attach,
        capabilities = M.capabilities,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })

    lspconfig.emmet_ls.setup({
        on_attach = M.on_attach,
        capabilities = M.capabilities,
        filetypes = {
            "html",
            "css",
            "scss",
            "javascriptreact",
            "typescriptreact",
        },
    })
end

return M
