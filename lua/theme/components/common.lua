local utils = require('theme.utils')
local M = {}
local bg = utils.bg
local fg = utils.fg

M.apply = function(colors)
    -- Disable cusror line
    -- vim.cmd "hi clear CursorLine"

    -- Line number
    fg("CursorLineNR", colors.white)

    -- same it bg, colors.so it doesn't appear
    fg("EndOfBuffer", colors.black)

    -- inactive statuslines as thin lines
    fg("StatusLineNC", colors.one_bg3 .. " gui=underline")

    fg("LineNr", colors.grey)
    fg("NvimInternalError", colors.red)
    fg("VertSplit", colors.one_bg2)

    -- [[ Plugin Highlights

    -- Dashboard
    fg("DashboardCenter", colors.grey_fg)
    fg("DashboardFooter", colors.grey_fg)
    fg("DashboardHeader", colors.grey_fg)
    fg("DashboardShortcut", colors.grey_fg)

    -- Indent blankline plugin
    fg("IndentBlanklineChar", colors.line)
end

return M
