local alpha = require("alpha")
local startify = require("alpha.themes.startify")

startify.config.opts = {
    noautocmd = false,
    margin = 4,
}

startify.section.header.val = {
    [[                                                    ]],
    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
    [[         											  ]],
}

startify.section.top_buttons.val = {
    startify.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    startify.button("f", "  Search File", ":Telescope find_files<CR>"),
    startify.button("r", "  Recent File", ":Telescope oldfiles<CR>"),
    startify.button("t", "  Terminal", ":ToggleTerm<CR>"),
    startify.button("u", "  Plugins", ":Lazy<CR>"),
    startify.button("m", "  LSP", ":Mason<CR>"),
    startify.button("s", "  Settings", ":e ~/.config/nvim/lua/config/settings.lua<CR>"),
    startify.button("h", "󰞋  Help", ":Telescope help_tags<CR>"),
    startify.button("a", "x  Cancel", ":Alpha<CR>"),
    startify.button("q", "󰅙  Quit Neovim", ":qa<CR>"),
}

-- disable MRU
startify.section.mru.val = { { type = "padding", val = 0 } }
-- disable MRU cwd
-- startify.section.mru_cwd.val = { { type = "padding", val = 0 } }

alpha.setup(startify.config)
