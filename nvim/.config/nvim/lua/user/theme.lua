local lualine = require('lualine')
local autopairs = require('nvim-autopairs')
local comment = require('Comment')

local M = {}

M.themes = {
    default = function()
        vim.cmd [[
            let g:netrw_keepdir = 0
            let g:netrw_winsize = 30
            let g:netrw_banner = 0
            let g:netrw_localcopydircmd = 'cp -r'
        ]]
        lualine.setup()
        autopairs.setup()
        comment.setup({
            mappings = {
                extra = true
            }
        })
    end,
    catppuccin = function()
        vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
        require("catppuccin").setup({
            transparent_background = true,
        })
        vim.cmd [[
            colorscheme catppuccin
        ]]
    end,
    nightfox = function()
        require('nightfox').setup({
            options = {
                transparent = true,
            }
        })
        vim.cmd("colorscheme nightfox")
    end,
    nordfox = function()
        require('nightfox').setup({
            options = {
                transparent = true,
            }
        })
        vim.cmd("colorscheme nordfox")
    end,
    carbonfox = function()
        require('nightfox').setup({
            options = {
                transparent = true,
            }
        })
        vim.cmd("colorscheme carbonfox")
    end,
    duskfox = function()
        require('nightfox').setup({
            options = {
                transparent = true,
            }
        })
        vim.cmd("colorscheme duskfox")
    end,
    gruvbox = function()
        vim.cmd [[
        let g:gruvbox_contrast_dark = "hard"
        colorscheme gruvbox
        ]]
    end,
    dayfox = function()
        require('nightfox').setup({
        })
        vim.cmd("colorscheme dayfox")
    end,
    onedark = function()
        require('onedark').setup {
            style = 'deep',
            transparent = true,
        }
        require('onedark').load()
    end,
    tokyonight = function()
        vim.cmd [[
        let g:tokyonight_style = "night"
        colorscheme tokyonight
        ]]
    end,
    tokyoday = function()
        vim.cmd [[
        let g:tokyonight_style = "day"
        colorscheme tokyonight
        ]]
    end,
    rose_pine = function()
        require('rose-pine').setup {
            disable_background = true,
            dark_variant = 'main',
            disable_italics = false,
        }
        vim.cmd('colorscheme rose-pine')
    end
}

M.setup = function(theme)
    M.themes.default()
    M.themes[theme]()
end

return M
