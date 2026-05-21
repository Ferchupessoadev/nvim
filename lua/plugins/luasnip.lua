return {
    "L3MON4D3/LuaSnip",
    event = "VeryLazy",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
        require("config.plugins.luasnip").setup()
    end,
}
