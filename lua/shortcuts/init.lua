local loader = require('utils.loader')
local files = {
    'shortcuts.common',
    'shortcuts.file-explorer',
    'shortcuts.navigation',
    'shortcuts.fuzzy',
    'shortcuts.packer',
    'shortcuts.git',
    'shortcuts.terminal',
    'shortcuts.focus',
    'shortcuts.diagnostic',
}

for _, file in ipairs(files) do
    loader(file)
end
