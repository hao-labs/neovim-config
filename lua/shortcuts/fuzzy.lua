local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------

-------------------------------------------------------------------
-- Find Files, Grep, Active Tab and Help config
-------------------------------------------------------------------
key({
    ['<C-p>'] = {                               -- ( Ctrl+p ) Find/Open Files
        "<cmd>Telescope find_files<cr>",
        "Find/Open Files"
    },
    ['<leader>f'] = {
        name = 'Find(Telescope)',
        f = {                                   -- ( <leader>ff ) Find/Open Files
            "<cmd>Telescope find_files<cr>",
            "Find/Open Files"
        },
        t = {                                   -- ( <leader>ft ) Find Active Tab
            "<cmd>Telescope buffers<cr>",
            "Find Active Tab/Buffer"
        },
        w = {                                   -- ( <leader>fg ) Find text in files
            "<cmd>Telescope live_grep<cr>",
            "Find Word in Files/Grep"
        },
        r = {                                   -- ( <leader>fr ) Find recent files
            "<cmd>Telescope oldfiles<cr>",
            "Find Recent files"
        },
        h = {                                   -- ( <leader>fh ) Find help Documentation
            "<cmd>Telescope help_tags<cr>",
            "Find Help Documentation"
        },
        p = {                                   -- ( <leader>fp ) Open Available Project
            "<cmd>Telescope projects<cr>",
            "Open Available Projects"
        }
    },
}, { mode = 'n' })
