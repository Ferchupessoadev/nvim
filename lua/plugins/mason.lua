return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
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
    end,
}
