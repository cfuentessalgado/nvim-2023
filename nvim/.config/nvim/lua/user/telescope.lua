local utils = require('telescope.utils')
local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', function()
    local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
    if ret == 0 then
        telescope.git_files()
    else
        telescope.find_files()
    end
end)

vim.keymap.set('n', '<leader>bf', telescope.buffers)
vim.keymap.set('n', '<leader>st', telescope.live_grep)
vim.keymap.set('n', '<leader>t', telescope.lsp_document_symbols)
vim.keymap.set('n', '<leader>co', telescope.git_branches)
vim.keymap.set('n', '<leader>gs', telescope.git_status)
vim.keymap.set('n', '<leader>g', function()
    telescope.grep_string({search = vim.fn.input("Grep > ")})
end, {})
-- This is your opts table
require("telescope").setup {
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
        }
    },
    pickers = {
        git_files = {
            show_untracked = true
        },
        live_grep = {
            additional_args = function()
                return { '--hidden' }
            end
        },
        grep_string = {
            additional_args = function()
                return { '--hidden' }
            end
        }
    }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
