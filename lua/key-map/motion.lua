local map = require('utils.map')

-- Split window navigation (ctrl + {h,j,k,l})
map {'n', '<C-h>', '<C-w>h', noremap = true}
map {'n', '<C-j>', '<C-w>j', noremap = true}
map {'n', '<C-k>', '<C-w>k', noremap = true}
map {'n', '<C-l>', '<C-w>l', noremap = true}
