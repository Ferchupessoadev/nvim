return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
    },
    config = require("config.plugins.lspconfig").setup,
}
