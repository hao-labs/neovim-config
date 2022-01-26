local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
key({
    [']'] = {
        name = 'Go to(Next)',
        c = {
            '<cmd>Gitsigns next_hunk<cr>',
            'Next Git Hunk'
        },
    },
    ['['] = {
        name = 'Go to(Previous)',
        c = {
            '<cmd>Gitsigns prev_hunk<cr>',
            'Previous Git Hunk'
        },
    },
    ['<leader>h'] = {
        name = 'Git Hunk',
        b = {
            '<cmd>Gitsigns blame_line<cr>',
            'Blame Current Line'
        },
        s = {
            '<cmd>Gitsigns stage_hunk<cr>',
            'Stage Current Hunk'
        },
        u = {
            '<cmd>Gitsigns undo_stage_hunk<cr>',
            'Undo Stage Current Hunk'
        },
        r = {
            '<cmd>Gitsigns reset_hunk<cr>',
            'Reset Current Hunk'
        },
        p = {
            '<cmd>Gitsigns preview_hunk<cr>',
            'Preview Current Hunk'
        },
    },
    ['<leader>g'] = {
        name = 'Git',
        a = {                                   -- ( <leader>ga ) Git add current file
            "<cmd>TermGitAddCurrentFile<cr>",
            "Add Current File (terminal)"
        },
        s =  {                                  -- ( <leader>gs ) Git status of active files
            "<cmd>Telescope git_status<cr>",
            "Current status"
        },
        n = {                                   -- ( <leader>gn ) Open Neogit to manage git
            "<cmd>Neogit<cr>",
            "Open Neogit(Manage Git Files)"
        },
        c = {                                   -- ( <leader>gc ) Git commit staged file
            "<cmd>TermGitCommit<cr>",
            "Commit Staged Files (terminal)"
        },
        h = {                                   -- ( <leader>gh ) Git Commit History
            "<cmd>DiffviewFileHistory<cr>",
            "Commit History (terminal)"
        },
    },
    ['<leader>d'] = {
        name = 'Git Diff View',
        o = {                                   -- ( <leader>gdo ) Open Diff View
            "<cmd>DiffviewOpen<cr>",
            "Open Diff View"
        },
        c = {                                   -- ( <leader>gdc ) Open Diff View
            "<cmd>DiffviewClose<cr>",
            "Close Diff View"
        },
        r = {                                   -- ( <leader>gdr ) Refresh Diff View
            "<cmd>DiffviewRefresh<cr>",
            "Refresh Diff View"
        },
    },
    ['<leader>f'] = {
        name = 'Find(Telescope)',
        l = {                                   -- ( <leader>fl ) Git log all files
            "<cmd>Telescope git_commits<cr>",
            "Commit Log All Files"
        },
        c = {                                   -- ( <leader>fc ) Git log current file
            "<cmd>Telescope git_bcommits<cr>",
            "Commit Log Current File/Commit History"
        },
        b = {                                   -- ( <leader>fb ) Switch branch
            "<cmd>Telescope git_branches<cr>",
            "Switch Branch"
        }
    }
}, { mode = 'n' })
