local key = require("which-key").register

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
key({
    ['<leader>p'] = {
        name = 'Packer',
        s = {
            "<cmd>PackerStatus<cr>",
            "Check Status Installed Plugins"
        },
        u = {
            "<cmd>PackerSync<cr>",
            "Update/Install and Compile Plugins"
        },
        p = {
            "<cmd>PackerProfile<cr>",
            "Open profiler for performance"
        },
        c = {
            "<cmd>PackerCompile<cr>",
            "Compile Installed Plugins"
        },
    }
}, { mode = 'n' })
