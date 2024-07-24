local cmp = require("cmp")
local luasnip = require("luasnip")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

local M = {}

function M.setup()
    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = {
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<C-k>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { "i" }),
            ["<C-j>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { "i" }),
            ["<CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Insert,
                select = true,
            }),
            ["<C-space>"] = cmp.mapping.complete(),
        },
        sources = {
            { name = "nvim_lua" },
            { name = "nvim_lsp" },
            { name = "path" },
            { name = "luasnip" },
            { name = "buffer" },
        },
        formatting = {
            format = function(entry, vim_item)
                local KIND_ICONS = {
                    Tailwind = "󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞",
                    Color = " ",
                    Snippet = " ",
                }
                if vim_item.kind == "Color" and entry.completion_item.documentation then
                    local _, _, r, g, b = string.find(entry.completion_item.documentation, "^rgb%((%d+), (%d+), (%d+)")
                    local color
                    -- The next conditional is for the new tailwindcss version.
                    if r and g and b then
                        color = string.format("%02x", r) .. string.format("%02x", g) .. string.format("%02x", b)
                    else
                        color = entry.completion_item.documentation:gsub("#", "")
                    end
                    local group = "Tw_" .. color

                    if vim.api.nvim_call_function("hlID", { group }) < 1 then
                        vim.api.nvim_command("highlight" .. " " .. group .. " " .. "guifg=#" .. color)
                    end

                    vim_item.kind = KIND_ICONS.Tailwind
                    vim_item.kind_hl_group = group

                    return vim_item
                end

                vim_item.kind = KIND_ICONS[vim_item.kind] or vim_item.kind
                return vim_item
            end,
        },
    })

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
end

return M
