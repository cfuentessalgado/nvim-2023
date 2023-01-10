local M = {}
M.setup = function()
    local luasnip = require('luasnip')
    local types = require('luasnip.util.types')
    luasnip.config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
        ext_opts = {
            [types.choiceNode] = {
                active = {
                    virt_text = { { "⬅", "Info" } },
                },
            },
        },
    }

    require("luasnip/loaders/from_vscode").lazy_load()

    luasnip.snippets = {
        all = {
        }
    }
end

return M
