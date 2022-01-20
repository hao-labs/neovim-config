local key = require("which-key").register

-------------------------------------------------------------------
-- normal mode key bindings
-------------------------------------------------------------------
key({
    ['<leader>c'] = {
        name = 'Code',
        a = {                                           -- ( <leader>ca ) Code Action
            "<cmd>Lspsaga code_action<cr>",
            "Code Action",
        },
        r = {                                           -- ( <leader>cr ) Rename current symbol
            "<cmd>Lspsaga rename<cr>",
            "Rename current symbol",
        },
        f = {
            "<cmd>Lspsaga lsp_finder<cr>",              -- ( <leader>cf ) Related Definition and Reference
            "Find Definition and Reference",
        },
        d =  {                                          -- ( <leader>cd ) Related Documentation
            "<cmd>Lspsaga hover_doc<cr>",
            "Peek Documentation",
        },
        t =  {                                          -- ( <leader>ct ) Toggle Diagnostic
            "<cmd>TroubleToggle<cr>",
            "Toggle Diagnostic",
        },
        o = {                                           -- ( <leader>co ) Code Outline
            "<cmd>SymbolsOutline<cr>",
            "Toggle Outline (Code Symbol)",
        },
        p = {                                           -- ( <leader>cp ) Code Format Prettier
            "<cmd>lua vim.lsp.buf.formatting()<cr>",
            "Format(Prettier)",
        },
    },
    [']'] = {
        name = 'Go to(Next)',
        d = {                                           -- ( ]d ) Next Diagnostic
            "<cmd>Lspsaga diagnostic_jump_next<cr>",
            'Next Diagnostic'
        },
    },
    ['['] = {
        name = 'Go to(Previous)',
        d = {                                           -- ( [d ) Previous Diagnostic
            "<cmd>Lspsaga diagnostic_jump_prev<cr>",
            'Previous Diagnostic'
        },
    }
}, { mode = 'n' })
