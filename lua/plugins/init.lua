local packer = require('utils.packer')
local file_types = {    -- only running on specified file types
    'lua',
    'javascript',
    'html',
    'json',
}

return packer.startup(function(use)
    -- Plugin Manager
    ----------------------------------------------------------------------------------------------
    use {"wbthomason/packer.nvim", event = "VimEnter"}         -- Packer can manage itself

    ----------------------------------------------------------------------------------------------
    -- Appearance/User Interface
    ----------------------------------------------------------------------------------------------
    use {
        'folke/tokyonight.nvim',
        config = function()
           require('plugins.configs.tokyonight')
        end
    }

    use {
        'kyazdani42/nvim-web-devicons',                        -- File Type Icons
    }

    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter",
        config = function()
            require('plugins.configs.nvim-gps')
        end
    }

    use {
        'nvim-lualine/lualine.nvim',                           -- Status Line
        after = 'nvim-web-devicons',
        event = 'BufRead',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        config = function ()
           require('plugins.configs.lualine')
        end
    }

    use {
        'romgrk/barbar.nvim',                                  -- Tab Management
        after = 'nvim-web-devicons',
        event = 'BufRead',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use {
        'kyazdani42/nvim-tree.lua',                            -- File Explorer and Picker
        config = function()                                    -- Git File Indicator
            require('plugins.configs.nvim-tree')
            require('utils.nvim-tree-offset').register_cmd()
        end,   -- Git File Indicator
        cmd = {
            "NvimTreeRefresh",
            "NvimTreeToggle",
            "NvimTreeToggleOffset",
        }
    }

    use {
        'nvim-telescope/telescope.nvim',                       -- Fuzzy Search for file, git, help
        requires = {                                           -- extensible to other fuzzy process
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('plugins.configs.telescope')
        end
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',            -- Additional plugins for telescope
        run = 'make'                                           -- with native fzf
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugins.configs.indent-blankline')
        end,
        event = 'BufRead'
    }

    use {
        "beauwilliams/focus.nvim",
        config = function() require("focus").setup() end
    }

    ----------------------------------------------------------------------------------------------
    -- Git
    ----------------------------------------------------------------------------------------------
    use {
        'lewis6991/gitsigns.nvim',                             -- Signs for added, removed, and changed lines
        requires = {                                           -- Hunk Integration (jump, add to stage, dll)
            'nvim-lua/plenary.nvim'                            -- Git Blame and preview
        },
        event = {
            "BufRead",
            "BufWritePost"
        },
        config = function()
            require ('gitsigns').setup()
        end
    }

    use {
        'sindrets/diffview.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    use {
        'tpope/vim-fugitive',
        cmd = {
            'G',
            'Git',
            'Gwrite',
            'GMove',
        }
    }

    use {
        'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require'colorizer'.setup()
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Motion
    ----------------------------------------------------------------------------------------------
    use {'ggandor/lightspeed.nvim'}

    ----------------------------------------------------------------------------------------------
    -- Formatter
    ----------------------------------------------------------------------------------------------
    use {
        'cappyzawa/trim.nvim',                                 -- Auto trims trailing whitespace and lines.
        config = function()
            require('plugins.configs.trim-nvim')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Languange Parser
    ----------------------------------------------------------------------------------------------
    use {
        'nvim-treesitter/nvim-treesitter',                     -- Language Parser, Indentation
        run = ':TSUpdate',                                     -- Folding, Hightlighting Syntax
        config = function()
            require('plugins.configs.nvim-treesitter')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Terminal
    ----------------------------------------------------------------------------------------------
    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require('plugins.configs.toggleterm')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Language Server Protocol (LSP)
    ----------------------------------------------------------------------------------------------
    use {
        'williamboman/nvim-lsp-installer',                     -- to make easier to install lsP
        ft = file_types,
        config = function()
            require('plugins.configs.lsp-installer')
        end
    }

    use {
        'neovim/nvim-lspconfig',                               -- define protocol between server and neovim
    }

    ----------------------------------------------------------------------------------------------
    -- Diagnostic
    ----------------------------------------------------------------------------------------------
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Auto Completion
    ----------------------------------------------------------------------------------------------
    use {
        'rafamadriz/friendly-snippets',
        event = "InsertEnter"
    }

    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        after = "nvim-cmp",
        config = function()
            require ('plugins.configs.luasnip')
        end
    }

    use {
        'hrsh7th/nvim-cmp',
        after = "friendly-snippets",
        config = function()
            require("plugins.configs.cmp")
        end,
        requires = {
            'onsails/lspkind-nvim'
        }
    }

    use {
        "saadparwaiz1/cmp_luasnip",
        after = "LuaSnip",
    }

    use {
        "hrsh7th/cmp-nvim-lua",
        after = "cmp_luasnip",
    }

    use {
        'hrsh7th/cmp-path',
        after = {
            'nvim-cmp'
        }
    }

    use {
        'hrsh7th/cmp-nvim-lsp',
        after = {
            'nvim-cmp'
        }
    }

    use {
        'hrsh7th/cmp-buffer',
        after = {
            'nvim-cmp'
        }
    }

    use {
        'tami5/lspsaga.nvim',
        config = function ()
            require('plugins.configs.lspsaga')
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require('plugins.configs.nvim-autopairs')
        end,
        after = 'nvim-cmp'
    }

    -- use {
    --     'hrsh7th/cmp-vsnip',
    --     after = {
    --         'nvim-cmp'
    --     }
    -- }

    -- use {
    --     'hrsh7th/vim-vsnip',
    --     after = {
    --         'nvim-cmp'
    --     }
    -- }

    use {
        "lukas-reineke/cmp-rg",
        after = {
            'nvim-cmp'
        }
    }

    use {
        'mfussenegger/nvim-dap',
        config = function()
            -- require("config.dap_config")
        end
    }

    use {
        'rcarriga/nvim-dap-ui',
    }

    use {
        'simrat39/symbols-outline.nvim',                        -- Symbols Explorer
        cmd = "SymbolsOutline"
    }

    use {
        'numToStr/Comment.nvim',                                -- Smart and owerful commenting plugin for neovimP
        config = function()
            require('plugins.configs.comment')
        end
    }

    -- mulit cursor
    -- use {
    --     'mg979/vim-visual-multi',
    --     event = "InsertEnter",
    --     branch = 'master'
    -- }

    ----------------------------------------------------------------------------------------------
    -- Performance
    ----------------------------------------------------------------------------------------------
    use {
        "nathom/filetype.nvim",                                -- Improve loading filetype performance
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer.first_install then
        vim.cmd 'hi NormalFloat guibg=#1e222a'
        vim.cmd 'PackerSync'
    end
end)
