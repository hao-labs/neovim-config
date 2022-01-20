local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
key({
    ['<leader>F'] = {
        name = 'Focus',
        m =  {                                  -- ( <leader>fm ) FocusMaximise
            "<cmd>FocusMaximise<cr>",
            "Temporarily maximises the focussed window"
        },
        me =  {                                  -- ( <leader>fme ) FocusMaxOrEqual
            "<cmd>FocusMaxOrEqual<cr>",
            "Toggles Between having the splits equalised or the focussed window maximised"
        }
    }
}, { mode = 'n' })
