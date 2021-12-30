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
local loader = require('utils.loader')

-- load packer plugins
loader('plugins')

-- base config
loader('base.common')
loader('base.tabs')
loader('base.file')

-- plugin config
loader('appearance.theme')
loader('fuzzy.telescope')
loader('parser.nvim-treesitter')
loader('lsp.lsp')

-- key map config
loader('key-map.common')
loader('key-map.motion')
loader('key-map.fuzzy')
