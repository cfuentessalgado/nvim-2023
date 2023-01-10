require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
    automatic_installation = true,
})
-- require("nvim-lsp-installer").setup {
--     automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
-- }
require('user.theme').setup('tokyoday')
require('user.settings')
require('user.treesitter')
require('user.gitsigns')
require('user.telescope')
require('user.luasnip').setup()
require('user.completion').setup()
require('user.lsp').setup()
require('user.keybindings')
require('user.harpoon')
