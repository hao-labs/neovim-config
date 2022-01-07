local map = require('utils.map')
local M = {}

M.set_terminal_keymaps = function()
    -------------------------------------------------------------------
    -- Terminal Mode Key Bindings
    -------------------------------------------------------------------
    map {'t', '<esc>', [[<C-\><C-n>]], buffer = true}           -- ( esc ) Exit terminal insert mode
    map {'t', 'kj', [[<C-\><C-n>]], buffer = true}              -- ( kj ) Exit terminal insert mode

    -------------------------------------------------------------------
    -- Multiple Split Terminal Navigation
    -------------------------------------------------------------------
    map {'t', '<C-h>', [[<C-\><C-n><C-W>h]], buffer = true}     -- ( Ctrl+h ) Go to left terminal
    map {'t', '<C-j>', [[<C-\><C-n><C-W>j]], buffer = true}     -- ( Ctrl+j ) Go to down terminal
    map {'t', '<C-k>', [[<C-\><C-n><C-W>k]], buffer = true}     -- ( Ctrl+k ) Go to top terminal
    map {'t', '<C-l>', [[<C-\><C-n><C-W>l]], buffer = true}     -- ( Ctrl+l ) Go to right terminal
end

return M
