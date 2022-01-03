local loader = require('utils.loader')
local M = {
    theme = 'onedark'
}

M.init = function()
    M.setTheme(M.theme)
end

M.getColors = function(theme)
    return loader("hl_themes." .. theme)
end

M.setHighlight = function(theme)
    local colors = M.getColors(theme)

    if colors then
        local highlighter = loader('theme.highlighter')

        if highlighter then
            highlighter.handle(colors)
        end
    end
end

M.setTheme = function(themeName)
    local base16 = loader('base16')

    if base16 then
        local themeName = themeName or M.theme

        -- set default theme to onedark
        base16(
            base16.themes(themeName), 
            true
        )
        -- set as default theme 
        M.theme = themeName

        M.setHighlight(themeName)
    end
end

return M
