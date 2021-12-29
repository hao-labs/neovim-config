--[[
███╗   ██╗██╗   ██╗██╗███╗   ███╗
████╗  ██║██║   ██║██║████╗ ████║
██╔██╗ ██║██║   ██║██║██╔████╔██║
██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

Author: Cahyo Bagus L
Source: https://github.com/hao-labs/neovim-config
License: MIT License
--]]

-- load packer plugins
require('plugins')

-- plugin config
require('appearance.theme')

-- base config
require('base.common')
require('base.tabs')
require('base.file')

-- key map config
require('key-map.common')
require('key-map.motion')
