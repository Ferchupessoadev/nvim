return {
    "numToStr/Comment.nvim",
    event = { "BufReadPost", "BufNewFile" },
    keys = { { "gcc", desc = "Comment current line" }, { "gc", mode = "v", desc = "Comment selected text" } },
    config = true,
}
