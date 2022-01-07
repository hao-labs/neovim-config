local loader = require('utils.loader')
local files = {
    'shortcuts.common',
    'shortcuts.navigation',
    'shortcuts.fuzzy',
    'shortcuts.packer',
    'shortcuts.git',
    'shortcuts.terminal',
}

for key, file in ipairs(files) do
    loader(file)
end
