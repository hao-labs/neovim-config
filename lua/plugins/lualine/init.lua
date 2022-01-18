local gps = require("nvim-gps")

local function insideNvimTree()
    return vim.bo.filetype == 'NvimTree'
end

local function insideToggleTerm()
    return vim.bo.filetype == 'toggleterm'
end

local function bufferNotEmpty()
    if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
    end

    return false
end

-- to make sure component appear
-- only when buffer ready and not inside nvim tree
local function isComponentAppear()
    return (
        bufferNotEmpty()
        and not insideNvimTree()
    )
end

local function notAppearOnTerminal()
    return (
        not insideToggleTerm()
        and isComponentAppear()
    )
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'tokyonight',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = {
            {
                'mode',
                cond = isComponentAppear
            },
            'test'
        },
        lualine_b = {
            {
                'branch',
                cond = isComponentAppear
            },
            {
                'diff',
                cond = isComponentAppear
            },
            {
                'diagnostics',
                cond = isComponentAppear
            }
        },
        lualine_c = {
            {
                'filename',
                cond = notAppearOnTerminal
            },
            {
                gps.get_location,
                color = 'DevIconTxt',
                cond = function()
                    return (
                        notAppearOnTerminal()
                        and gps.is_available()
                    )
                end
            },
        },
        lualine_x = {
            {
                'encoding',
                cond = notAppearOnTerminal
            },
            {
                'fileformat',
                cond = notAppearOnTerminal
            },
            {
                'filetype',
                cond = notAppearOnTerminal
            }
        },
        lualine_y = {
            {
                'progress',
                cond = isComponentAppear
            }
        },
        lualine_z = {
            {
                'location',
                cond = isComponentAppear
            }
        }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    extensions = {}
}
