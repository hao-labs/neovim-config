local key = require("which-key").register

-- you can toggle multiple session of terminal just by adding number before Ctr-\
-- ( 1+Ctrl+\ ) Toggle Terminal Session 1

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
key({
    ['<leader>t'] = {
        name = 'Terminal',
        a = {                                   -- ( <leader>ta ) Toggle All Terminal
            '<cmd>ToggleTermToggleAll<cr>',
            'Toggle All Terminal'
        },
        t = {                                   -- ( <leader>tt ) Toggle Terminal
            '<C-\\>',
            'Toggle Terminal'
        },
    },
    ['<C-\\>'] = 'Toggle Terminal',             -- ( Ctrl+\ ) Toggle Terminal
}, { mode = 'n' })
