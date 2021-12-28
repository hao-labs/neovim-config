local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- [packer.nvim] Packer can manage itself
    use {"wbthomason/packer.nvim", event = "VimEnter"}

    -- [nvim-web-devicons]
    use {'kyazdani42/nvim-web-devicons', event = "BufRead"}

    -- [nvim-tree.lua] File Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    -- telescope: extensible fuzzy file finder--
    -- use {
    --     'nvim-telescope/telescope.nvim',
    --     requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'},
    --     config = function() require("config.telescope_config") end,
    --     module = 'telescope'
    -- }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
