local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
-- <leader>hb                                           -- Git Blame current line
-- <leader>hs                                           -- Git Stage hunk
-- <leader>hs                                           -- Git Undo Stage hunk
-- <leader>hp                                           -- Git Preview Hunk
-- ]c                                                   -- Go to Next hunk
-- [c                                                   -- Go to Previous hunk
map {'n', '<leader>gw', ':GWrite<cr>'}                  -- Git add current file
map {'n', '<leader>gs', ':Neogit<cr>'}                  -- Git Status with Neogit
map {'n', '<leader>gdh', ':DiffviewFileHistory<cr>'}    -- Git Current File History
map {'n', '<leader>gdf', ':DiffviewToggleFiles<cr>'}    -- Git Diff Active files
