local utils = require('theme.utils')
local M = {}
local bg = utils.bg
local fg_bg = utils.fg_bg

M.apply = function(colors)
    -- local fg, bg, fg_bg = method

    -- Telescope
    fg_bg(
        "TelescopeBorder", 
        colors.darker_black, 
        colors.darker_black
    )

    fg_bg(
        "TelescopePromptBorder", 
        colors.black2, 
        colors.black2
    )

    fg_bg(
        "TelescopePromptNormal", 
        colors.white, 
        colors.black2
    )

    fg_bg(
        "TelescopePromptPrefix", 
        colors.red, 
        colors.black2
    )

    bg(
        "TelescopeNormal", 
        colors.darker_black
    )

    fg_bg(
        "TelescopePreviewTitle", 
        colors.black, 
        colors.green
    )

    fg_bg(
        "TelescopePromptTitle", 
        colors.black, 
        colors.red
    )

    fg_bg(
        "TelescopeResultsTitle", 
        colors.darker_black, 
        colors.darker_black
    )

    bg(
        "TelescopeSelection", 
        colors.black2
    )
end

return M
