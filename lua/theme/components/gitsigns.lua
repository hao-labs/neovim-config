local utils = require('theme.utils')
local M = {}
local fg_bg = utils.fg_bg

M.apply = function(colors)
    -- Git Signs

    fg_bg("DiffAdd", colors.blue, "NONE")
    fg_bg("DiffChange", colors.grey_fg, "NONE")
    fg_bg("DiffChangeDelete", colors.red, "NONE")
    fg_bg("DiffModified", colors.red, "NONE")
    fg_bg("DiffDelete", colors.red, "NONE")
end

return M
