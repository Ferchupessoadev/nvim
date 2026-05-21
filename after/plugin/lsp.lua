vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
    callback = function(ev)
        local opts = { buffer = ev.buf, desc = "LSP" }

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>cf", function()
            vim.lsp.buf.format({ async = true })
        end, opts)
    end,
})


vim.api.nvim_create_user_command("LspStop", function(args)
    local lsp_name = args.fargs[1]
    local filter = {}
    if lsp_name then
        filter.name = lsp_name
    end
    vim.lsp.stop_client(vim.lsp.get_clients(filter))
    vim.cmd("edit")
end, {
    nargs = "?",
    complete = function()
        return vim.iter(vim.lsp.get_clients())
            :map(function(client)
                return client.name
            end)
            :totable()
    end,
})

local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("*", {
    capabilities = capabilities,
})

vim.lsp.config("blade", {
    filetypes = { "blade" },
})