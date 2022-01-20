require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    triggers = "auto", -- automatically setup triggers
    operators = {
        gc = "Comments"
    },
    key_labels = {
        ["<C>"] = 'Ctrl',
        ["<A>"] = 'Alt',
    }
}
