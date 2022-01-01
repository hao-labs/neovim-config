local fn = vim.fn
local log = require('utils.log').error
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local packer_not_exist = (fn.empty(fn.glob(install_path)) > 0)

-- check if packer installed to ~/.local/share/nvim/site/pack/packer/start/packer.nvim
if packer_not_exist then
    no_packer = fn.system({
        'git', 
        'clone', 
        '--depth', 
        '1', 
        'https://github.com/wbthomason/packer.nvim', 
        install_path
    })
end

-- Use a protected call so we don't show error out on first use
local status_ok, error_msg = pcall(vim.cmd, [[packadd packer.nvim]])
if not status_ok then
    log(error_msg, "load plugin")
    return false
end

-- Use a protected call so we don't show error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    log('load packer: ' .. packer, "load packer")
    return false
end

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if no_packer and packer_not_exist then
    packer.first_install = packer_not_exist
end

-- initialize packer with floating window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float {
        border = "single"
      }
    end
  },
  git = {
    clone_timeout = 60 -- Timeout, in seconds, for git clones
  },
  log = { level = 'debug' },
  profile = {
    enable = true,
    threshold = 1, -- integer in milliseconds, plugins which load faster than this won't be shown in profile output
  }
}

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return packer
