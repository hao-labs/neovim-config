local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
-- Refresh Nvim Tree                                    -- ( Shift + R )
-- Add new file                                         -- ( a )
-- Rename file                                          -- ( r ) then enter new name file
-- Delete file                                          -- ( d ) then confirm it with Yes
-- Copy file                                            -- ( c ) then paste ( p ) on path destination
map {'n', '<C-n>', ":NvimTreeToggleOffset<CR>"}         -- (Ctrl+N) to toggle nvim tree
