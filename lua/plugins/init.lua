local packer = require('utils.packer')
local file_types = {    -- only running on specified file types
    'lua',
    'javascript',
    'html',
    'json',
    'php',
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
           require('plugins.tokyonight')
        end
    }

    use {
        'kyazdani42/nvim-web-devicons',                        -- File Type Icons
    }

    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter",
        after = 'nvim-treesitter',
        config = function()
            require('plugins.nvim-gps')
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
           require('plugins.lualine')
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
            require('plugins.nvim-tree')
        end,
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
            require('plugins.telescope')
        end
    }

    use {
        'rcarriga/nvim-notify',
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',            -- Additional plugins for telescope
        run = 'make'                                           -- with native fzf
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugins.indent-blankline')
        end,
        event = 'BufRead'
    }

    use {
        "beauwilliams/focus.nvim",
        config = function()
            require('plugins.focus')
        end
    }

    use {
        'glepnir/dashboard-nvim',
        config = function ()
           require('plugins.dashboard-nvim')
        end
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require('plugins.nvim-colorizer')
        end
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
            require('plugins.gitsigns')
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
        requires = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim',
        },
        cmd = {
            'Neogit'
        },
        config = function()
            require('plugins.neogit')
        end
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require('plugins.nvim-colorizer')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Motion
    ----------------------------------------------------------------------------------------------
    use {'ggandor/lightspeed.nvim'}

    ----------------------------------------------------------------------------------------------
    -- Time Tracking
    ----------------------------------------------------------------------------------------------
    use {
        "wakatime/vim-wakatime"
    }

    ----------------------------------------------------------------------------------------------
    -- Formatter
    ----------------------------------------------------------------------------------------------
    use {
        'cappyzawa/trim.nvim',                                 -- Auto trims trailing whitespace and lines.
        config = function()
            require('plugins.trim-nvim')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Project
    ----------------------------------------------------------------------------------------------
    use {
        "ahmedkhalf/project.nvim",                             -- Auto discovery and change directory
        config = function()                                    -- for multiple project
            require('plugins.project')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Languange Parser
    ----------------------------------------------------------------------------------------------
    use {
        'nvim-treesitter/nvim-treesitter',                     -- Language Parser, Indentation
        run = ':TSUpdate',                                     -- Folding, Hightlighting Syntax
        config = function()
            require('plugins.nvim-treesitter')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Terminal
    ----------------------------------------------------------------------------------------------
    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require('plugins.toggleterm')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Language Server Protocol (LSP)
    ----------------------------------------------------------------------------------------------
    use {
        'williamboman/nvim-lsp-installer',                     -- to make easier to install lsP
        ft = file_types,
        config = function()
            require('plugins.lsp')
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
            require('plugins.trouble')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Auto Completion
    ----------------------------------------------------------------------------------------------
    use {
        "folke/which-key.nvim",
        config = function()
            require('plugins.which-key')
        end
    }

    use {
        'rafamadriz/friendly-snippets',
        event = "InsertEnter"
    }

    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        after = "nvim-cmp",
        config = function()
            require('plugins.luasnip')
        end
    }

    use {
        'hrsh7th/nvim-cmp',
        after = "friendly-snippets",
        config = function()
            require('plugins.cmp')
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
            require('plugins.lsp.saga')
        end
    }

    use {
        'windwp/nvim-autopairs',
        config = function()
            require('plugins.nvim-autopairs')
        end,
        after = 'nvim-cmp'
    }

    use {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require('plugins.lsp.null-ls')
        end,
        requires = { "nvim-lua/plenary.nvim" },
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
            require('plugins.comment')
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
