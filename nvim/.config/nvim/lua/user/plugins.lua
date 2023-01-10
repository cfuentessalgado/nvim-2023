local packer = require("packer")
packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    -- use "williamboman/nvim-lsp-installer"
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use {
        'hrsh7th/nvim-cmp',
    }
    use {
        'L3MON4D3/LuaSnip',
        after = 'nvim-cmp',
    }
    use 'saadparwaiz1/cmp_luasnip'
    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
            }
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'lewis6991/gitsigns.nvim'
    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim'
    use 'rafamadriz/friendly-snippets'
    use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
    -- use 'github/copilot.vim'
    use { 'laytan/cloak.nvim', config = function() require('cloak').setup({
            enabled = true,
            patterns = {
                {
                    -- Match any file starting with '.env'.
                    file_pattern = '.env*',
                    -- Match an equals sign and any character after it.
                    cloak_pattern = '=.+'
                },
            },
        })
    end }
    use 'nvim-telescope/telescope-ui-select.nvim'
    use 'navarasu/onedark.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'kdheepak/lazygit.nvim'
    use 'catppuccin/nvim'
    use 'ThePrimeagen/harpoon'
    use 'ThePrimeagen/vim-be-good'
    use 'gruvbox-community/gruvbox'
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {
        "zbirenbaum/copilot.lua",
        event = "VimEnter",
        config = function()
            vim.defer_fn(function()
                require("copilot").setup()
            end, 100)
        end,
    }
    use {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup({
                method = "getCompletionsCycling"
            })
        end
    }
    use 'voldikss/vim-floaterm'
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    -- Lua
    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use 'mbbill/undotree'
end)
