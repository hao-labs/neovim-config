-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua require("shortcuts.toggleterm").set_terminal_keymaps()')
vim.cmd [[
    command! -count=1 TermGitAddCurrentFile lua require'utils.git'.addCurrentFile(<count>)
]]
vim.cmd [[
    command! -count=1 TermGitCommit lua require'utils.git'.commit(<count>)
]]

require("toggleterm").setup{
    open_mapping = [[<c-\>]],
}
