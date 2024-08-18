return {
    "rcarriga/nvim-notify",
    config = function()
        local notify = require("notify")
        -- this for transparency
        notify.setup({
            background_colour = "#000000",
            render = "compact",
            stages = "static",
            timeout = 10000,
            fps = 10,
        })
        -- this overwrites the vim notify function
        vim.notify = notify.notify
    end,
}
