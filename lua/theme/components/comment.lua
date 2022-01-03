local utils = require('theme.utils')
local M = {}
local fg = utils.fg
local italic = false

M.apply = function(colors)
    -- Comments

    if(italic) then
        fg("Comment", colors.grey_fg .. " gui=italic")
    else
        fg("Comment", colors.grey_fg)
    end
end

return M
