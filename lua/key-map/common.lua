local map = require('utils.map')

-- [normal-mode mapping]
-- (,l) Toggle list (display unprintable characters)
map {'n', '<Leader>l', ':set list!<CR>'}

-- [insert-mode mapping]
-- (kj) alias for esc button
map {'i', 'kj', '<ESC>'}
