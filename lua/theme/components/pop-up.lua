local utils = require('theme.utils')
local M = {}
local bg = utils.bg
local fg = utils.fg

M.apply = function(colors)
    -- Pop Up 
    bg("Pmenu", colors.one_bg)
    bg("PmenuSbar", colors.one_bg2)
    bg("PmenuSel", colors.pmenu_bg)
    bg("PmenuThumb", colors.nord_blue)
    fg("CmpItemAbbr", colors.white)
    fg("CmpItemAbbrMatch", colors.white)
    fg("CmpItemKind", colors.white)
    fg("CmpItemMenu", colors.white)
end

return M
