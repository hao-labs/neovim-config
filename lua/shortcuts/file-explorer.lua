local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
-- Refresh Nvim Tree                        -- ( Shift + R )
-- Add new file                             -- ( a )
-- Rename file                              -- ( r ) then enter new name file
-- Delete file                              -- ( d ) then confirm it with Yes
-- Copy file                                -- ( c ) then paste ( p ) on path destination
key({
    ['<C-n>'] = {                           -- ( Ctrl+N ) Toggle File Explorer (nvim-tree)
        "<cmd>NvimTreeToggleOffset<cr>",
        "Toggle File Explorer"
    }
}, { mode = 'n' })
