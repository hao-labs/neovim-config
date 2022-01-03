local utils = require('theme.utils')
local M = {}
local fg = utils.fg
local bg = utils.bg

M.apply = function(colors)
    -- For floating windows
    fg("FloatBorder", colors.blue)
    bg("NormalFloat", colors.darker_black)
end

return M
