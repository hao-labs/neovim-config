local packer = require('utils.packer')
local file_types = {    -- only running on specified file types
    'lua',
    'javascript',
    'html',
    'json',
}

return packer.startup(function(use)
    ----------------------------------------------------------------------------------------------
    -- Plugin Manager
    ----------------------------------------------------------------------------------------------
    use {"wbthomason/packer.nvim", event = "VimEnter"}         -- Packer can manage itself

    ----------------------------------------------------------------------------------------------
    -- Appearance/User Interface
    ----------------------------------------------------------------------------------------------
    use {
        "NvChad/nvim-base16.lua",                              -- Theme default (onedark)
        after = "packer.nvim",
        config = function()
            require('theme')
        end
    }

    use {
        'kyazdani42/nvim-web-devicons',                        -- File Type Icons
        event = {
            'BufRead',
            'WinEnter',
        }
    }

    use {
        'nvim-lualine/lualine.nvim',                           -- Status Line
        after = 'nvim-web-devicons',
        event = 'BufRead',
        requires = {
            'kyazdani42/nvim-web-devicons', 
        },
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
        end,   -- Git File Indicator
        cmd = {
            "NvimTreeRefresh",
            "NvimTreeToggle"
        }
    }

    use {
        'nvim-telescope/telescope.nvim',                       -- Fuzzy Search for file, git, help
        requires = {                                           -- extensible to other fuzzy process
            'nvim-lua/popup.nvim', 
            'nvim-lua/plenary.nvim'
        },
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',            -- Additional plugins for telescope
        run = 'make'                                           -- with native fzf
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
        'tpope/vim-fugitive',
        cmd = {
            'G', 
            'Git',
            'Ggrep',
            'Gdiffsplit',
            'GBrowse'
        }
    }

    ----------------------------------------------------------------------------------------------
    -- Motion
    ----------------------------------------------------------------------------------------------
    use {'ggandor/lightspeed.nvim'}

    ----------------------------------------------------------------------------------------------
    -- Languange Parser 
    ----------------------------------------------------------------------------------------------
    use {
        'nvim-treesitter/nvim-treesitter',                     -- Language Parser, Indentation
        run = ':TSUpdate',                                     -- Folding, Hightlighting Syntax
        ft = file_types,
        config = function()
            require('parser.nvim-treesitter')
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Language Server Protocol (LSP)
    ----------------------------------------------------------------------------------------------
    use {
        'neovim/nvim-lspconfig',                               -- define protocol between server and neovim
        ft = file_types
    }

    use {
        'williamboman/nvim-lsp-installer',                     -- to make easier to install LSP
    }

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
