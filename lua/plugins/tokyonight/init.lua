local telescope = require('theme.components.telescope')
local colors = require('tokyonight.theme').setup().colors
-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_comments = false
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

telescope.apply(colors)

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
