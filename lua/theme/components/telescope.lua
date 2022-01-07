local utils = require('theme.utils')
local M = {}
local fg = utils.fg
local bg = utils.bg
local fg_bg = utils.fg_bg

M.apply = function(colors)
    -- Telescope

    fg_bg(
        "TelescopePromptBorder",
        colors.bg,
        colors.bg
    )

    fg_bg(
        "TelescopePreviewBorder",
        '#16161e',
        '#16161e'
    )

    fg_bg(
        "TelescopeResultsBorder",
        '#16161e',
        '#16161e'
    )

    fg_bg(
        "TelescopePromptNormal",
        colors.fg,
        colors.bg
    )

    fg_bg(
        "TelescopePromptPrefix",
        colors.red,
        colors.bg
    )

    bg(
        "TelescopeNormal",
        colors.bg_dark
    )

    fg_bg(
        "TelescopePreviewTitle",
        colors.black,
        colors.green
    )

    fg_bg(
        "TelescopePromptTitle",
        colors.terminal_black,
        colors.red
    )

    fg_bg(
        "TelescopeResultsTitle",
        '#16161e',
        '#16161e'
    )

    bg(
        "TelescopeSelection",
        colors.bg
    )
end

return M
