local packer = require('utils.packer')

return packer.startup(function(use)
    ----------------------------------------------------------------------------------------------
    -- Plugin Manager
    ----------------------------------------------------------------------------------------------
    use {"wbthomason/packer.nvim", event = "VimEnter"}         -- Packer can manage itself

    ----------------------------------------------------------------------------------------------
    -- Appearance/User Interface
    ----------------------------------------------------------------------------------------------
    use {'EdenEast/nightfox.nvim'}                             -- Theme 
    use {
        'kyazdani42/nvim-web-devicons',                        -- File Type Icons
        event = "BufRead"
    }
    use {'romgrk/barbar.nvim', event = "BufRead"}              -- Tab Management
    use {
        'kyazdani42/nvim-tree.lua',                            -- File Explorer 
        config = function() require'nvim-tree'.setup {} end    -- Git File Indicator
    }

    use {
        'nvim-telescope/telescope.nvim',                       -- Fuzzy Search for file, git, help
        requires = {                                           -- extensible to other fuzzy process
            'nvim-lua/popup.nvim', 
            'nvim-lua/plenary.nvim'
        }
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
        config = function() 
            require ('gitsigns').setup() 
        end
    }

    ----------------------------------------------------------------------------------------------
    -- Languange Parser 
    ----------------------------------------------------------------------------------------------
    use {
        'nvim-treesitter/nvim-treesitter',                     -- Language Parser, Indentation
        run = ':TSUpdate'                                      -- Folding, Hightlighting Syntax
    }

    ----------------------------------------------------------------------------------------------
    -- Language Server Protocol (LSP)
    ----------------------------------------------------------------------------------------------
    use {
        'neovim/nvim-lspconfig',                               -- define protocol between server and neovim
        'williamboman/nvim-lsp-installer',                     -- to make easier to install LSP
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require ('packer').sync()
    end
end)
