local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
key({
    ['<F5>'] = {                        -- ( F5 ) to source lua file
        "<cmd>luafile %<cr>",
        "Source lua file"
    },
    ['<leader>'] = 'Tools',
    s = 'Jump To Next(Motion)',
    S = 'Jump To Previous(Motion)',
}, { mode = 'n' })

-------------------------------------------------------------------
-- Insert Mode Key Bindings
-------------------------------------------------------------------
key({
    ['kj'] = {                          -- ( kj ) alias for esc button
        '<ESC>', 'Esc'
    },
}, { mode = 'i' })
