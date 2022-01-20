local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------

-------------------------------------------------------------------
-- Split Window Navigation
-------------------------------------------------------------------
key({
    ['<C-h'] = {                            -- ( ctrl+h ) jump left window
        '<C-w>h',
        'Jump Left Window'
    },
    ['<C-l'] = {                            -- ( ctrl+l ) jump right window
        '<C-w>l',
        'Jump Right Window'
    },
    ['<C-j'] = {                            -- ( ctrl+j ) jump down window
        '<C-w>j',
        'Jump Down Window'
    },
    ['<C-k'] = {                            -- ( ctrl+k ) jump top window
        '<C-w>k',
        'Jump Top Window'
    },
}, { mode = 'n' })

-------------------------------------------------------------------
-- Tab Navigation
-------------------------------------------------------------------
-- Move to previous/next
key({
    [']'] = {
        name = 'Go to(Next)',
        b = {                               -- ( ]b ) Next Tab
            "<cmd>BufferNext<cr>",
            'Next Tab'
        },
        B = {                               -- ( ]B ) Move to Next Tab
            "<cmd>BufferMoveNext<cr>",
            'Move to Next Tab'
        },
    },
    ['['] = {
        name = 'Go to(Previous)',
        b = {                               -- ( [b ) Previous Tab
            "<cmd>BufferPrevious<cr>",
            'Previous Tab'
        },
        B = {                               -- ( [B ) Move to Previous Tab
            "<cmd>BufferMovePrevious<cr>",
            'Move to Previous Tab'
        },
    },
    ['<A-w>'] = {                             -- ( Alt+w ) Close Tab
        "<cmd>BufferClose<cr>",
        'Close Tab'
    },
}, { mode = 'n' })
