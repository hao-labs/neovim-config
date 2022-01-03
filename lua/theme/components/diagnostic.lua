local utils = require('theme.utils')
local M = {}
local bg = utils.bg
local fg = utils.fg

M.apply = function(colors)
    -- Diagnostic
    fg("DiagnosticHint", colors.purple)
    fg("DiagnosticError", colors.red)
    fg("DiagnosticWarn", colors.yellow)
    fg("DiagnosticInformation", colors.green)
end

return M
