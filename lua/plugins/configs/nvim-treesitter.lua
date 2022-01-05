----------------------------------------------------------------------------------------------
-- Language Parser
----------------------------------------------------------------------------------------------

vim.opt.foldenable = false                       -- disable fold
vim.opt.foldmethod = "expr"                      -- set custom fold method to expression
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"  -- tell neovim to use tree sitter foldexpr

require'nvim-treesitter.configs'.setup {
    -- ensure_installed = "maintained", -- Only use parsers that are maintained
    ensure_installed = {
        'bash',
        'dockerfile',
        'graphql',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'lua',
        'php',
        'rust',
        'scss',
        'typescript',
        'yaml',
    },
    sync_install = false,

    highlight = { 
        enable = true, -- enable highlighting syntax
    },
    indent = {
        enable = true, -- enable indentation
    }
}
