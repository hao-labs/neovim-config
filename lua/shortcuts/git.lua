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
map {'n', '<leader>gw', ':TermGitAddCurrentFile<cr>'}                  -- Git add current file
map {'n', '<leader>gs', ':Neogit<cr>'}                  -- Git Status with Neogit
map {'n', '<leader>gdh', ':DiffviewFileHistory<cr>'}    -- Git Current File History
map {'n', '<leader>gdo', ':DiffviewOpen<cr>'}           -- Git Open Diff Window with Active files
map {'n', '<leader>gdc', ':DiffviewClose<cr>'}          -- Git Close Diff Window
map {'n', '<leader>gdr', ':DiffviewRefresh<cr>'}        -- Git Refresh/Update list of active file
map {'n', '<leader>gcom', ':TermGitCommit<cr>'}         -- Run Git Commit through terminal
