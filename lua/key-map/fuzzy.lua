local map = require('utils.map')

-- =========== Find Files ===========
map {'n', 'ff', ':Telescope find_files<cr>'} -- Find files
map {'n', 'fif', ':Telescope live_grep<cr>'} -- Find grep in files
map {'n', 'ft', ':Telescope buffers<cr>'} -- Find active tab
map {'n', 'fh', ':Telescope help_tags<cr>'} -- Find help
