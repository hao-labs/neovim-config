local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
map {'n', '<Leader>l', ':set list!<CR>'}             -- (,l) Toggle list (display unprintable characters)
map {'n', '<C-n>', ':NvimTreeToggle<CR>'}            -- (Ctrl+N) to toggle nvim tree
map {'n', '<F5>', ':luafile %<CR>'}                  -- (F5) to source lua file

-------------------------------------------------------------------
-- Insert Mode Key Bindings
-------------------------------------------------------------------
map {'i', 'kj', '<ESC>'}                             -- (kj) alias for esc button
