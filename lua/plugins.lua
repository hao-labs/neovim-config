local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
      'git', 
      'clone', 
      '--depth', 
      '1', 
      'https://github.com/wbthomason/packer.nvim', 
      install_path
  })
end

return require('packer').startup(function(use)
    -- [packer.nvim] Packer can manage itself
    use {"wbthomason/packer.nvim", event = "VimEnter"}

    -- [nightfox.nvim] Theme 
    use {'EdenEast/nightfox.nvim'}

    -- [nvim-web-devicons] File Type Icons
    use {'kyazdani42/nvim-web-devicons', event = "BufRead"}

    -- [barbar.nvim] Tab
    use {'romgrk/barbar.nvim', event = "BufRead"}

    -- [nvim-tree.lua] File Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        config = function() require'nvim-tree'.setup {} end
    }

    -- [telescope-fzf-native.nvim] extensible fuzzy file finder--
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- [telescope.nvim] extensible fuzzy file finder--
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim', 
            'nvim-lua/plenary.nvim'
        },
        module = 'telescope'
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require ('packer').sync()
    end
end)
