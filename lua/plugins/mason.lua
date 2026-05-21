
return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
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
        	ensure_installed = {
        		"ts_ls",
        		"lua_ls",
        		"tailwindcss",
        		"html",
        		"cssls",
        		"basedpyright",
        		"bashls",
        		"dockerls",
        		"jsonls",
        		"nginx_language_server",
        		"yamlls",
        	},
        	-- Automatically calls vim.lsp.enable() on installed servers (Neovim 0.11+)
        	automatic_enable = true,
        })
    end,
}
