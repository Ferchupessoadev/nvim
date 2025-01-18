return {
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" },
    config = function()
        require("mason").setup({
            ui = {
                border = "rounded",
                icons = {
                    package_pending = "  ",
                    package_installed = " 󰄳 ",
                    package_uninstalled = " 󰚌 ",
                },
                keymaps = {
                    toggle_server_expand = "<CR>",
                    install_server = "i",
                    update_server = "u",
                    check_server_version = "c",
                    update_all_servers = "U",
                    check_outdated_servers = "C",
                    uninstall_server = "X",
                    cancel_installation = "<C-c>",
                },
            },
        })
        require("mason-lspconfig").setup({
            ensure_installed = require("config.servers").servers,
            automatic_installation = true,
        })

        local lspconfig = require("lspconfig")
        local lspconfig_config = require("config.lspconfig")

        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    on_attach = lspconfig_config.on_attach,
                    capabilities = lspconfig_config.capabilities,
                })
            end,
            ["emmet_language_server"] = function()
                lspconfig.emmet_language_server.setup({
                    on_attach = lspconfig_config.on_attach,
                    capabilities = lspconfig_config.capabilities,
                    filetypes = {
                        "html",
                        "typescriptreact",
                        "javascriptreact",
                        "css",
                        "sass",
                        "scss",
                        "less",
                        "blade",
                        "php",
                        "twig",
                    },
                })
            end,
        })
    end,
}
