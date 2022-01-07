-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua require("shortcuts.toggleterm").set_terminal_keymaps()')

require("toggleterm").setup{
    open_mapping = [[<c-\>]],
}
