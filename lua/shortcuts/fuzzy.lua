local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------

-------------------------------------------------------------------
-- Find Files, Grep, Active Tab and Help config
-------------------------------------------------------------------
map {'n', '<C-p>', ':Telescope find_files<cr>'} -- ( Ctrl+p ) Find files
map {'n', '<space>fif', ':Telescope live_grep<cr>'}    -- ( fif ) Find grep in files
map {'n', '<space>ft', ':Telescope buffers<cr>'}       -- ( ft ) Find active tab
map {'n', '<space>fh', ':Telescope help_tags<cr>'}     -- ( fh ) Find help
map {'n', '<space>gs', ':Telescope git_status<cr>'}    -- ( gs ) Git status of active files
map {'n', '<space>pr', ':Telescope projects<cr>'}      -- ( pr ) Explore available projects
