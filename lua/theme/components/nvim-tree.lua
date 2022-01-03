local utils = require('theme.utils')
local M = {}
local fg = utils.fg
local bg = utils.bg
local fg_bg = utils.fg_bg

M.apply = function(colors)
    -- NvimTree

    fg("NvimTreeEmptyFolderName", colors.folder_bg)
    fg("NvimTreeEndOfBuffer", colors.darker_black)
    fg("NvimTreeFolderIcon", colors.folder_bg)
    fg("NvimTreeFolderName", colors.folder_bg)
    fg("NvimTreeGitDirty", colors.red)
    fg("NvimTreeIndentMarker", colors.one_bg2)
    bg("NvimTreeNormal", colors.darker_black)
    bg("NvimTreeNormalNC", colors.darker_black)
    fg("NvimTreeOpenedFolderName", colors.folder_bg)
    fg("NvimTreeRootFolder", colors.red .. " gui=underline") -- enable underline for root folder in nvim tree
    fg_bg("NvimTreeStatuslineNc", colors.darker_black, colors.darker_black)
    fg("NvimTreeVertSplit", colors.darker_black)
    bg("NvimTreeVertSplit", colors.darker_black)
    fg_bg("NvimTreeWindowPicker", colors.red, colors.black2)
end

return M
