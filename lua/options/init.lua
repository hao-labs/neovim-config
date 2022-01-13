local loader = require('utils.loader')
local files = {
    'options.setting',
    'options.tabs',
    'options.file',
}

for _, file in ipairs(files) do
    loader(file)
end
