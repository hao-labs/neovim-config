local loader = require('utils.loader')
local files = {
    'options.setting',
    'options.tabs',
    'options.file',
}

for key, file in ipairs(files) do
    loader(file)
end
