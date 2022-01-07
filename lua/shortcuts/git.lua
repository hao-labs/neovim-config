local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
-- <leader>hb                                       -- Git Blame current line
-- <leader>hs                                       -- Git Stage hunk
-- <leader>hs                                       -- Git Undo Stage hunk
-- <leader>hp                                       -- Git Preview Hunk
-- ]c                                               -- Go to Next hunk
-- [c                                               -- Go to Previous hunk
map {'n', '<leader>gw', ':GWrite<cr>'}              -- Git add current file
map {'n', '<leader>ng', ':Neogit<cr>'}              -- Neogit
