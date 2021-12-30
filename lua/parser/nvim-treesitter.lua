----------------------------------------------------------------------------------------------
-- Language Parser
----------------------------------------------------------------------------------------------

vim.opt.foldenable = false                       -- disable fold
vim.opt.foldmethod = "expr"                      -- set custom fold method to expression
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"  -- tell neovim to use tree sitter foldexpr

require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- Only use parsers that are maintained
    highlight = { 
        enable = true, -- enable highlighting syntax
    },
    indent = {
        enable = true, -- enable indentation
    }
}
