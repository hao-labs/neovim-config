local map = require('utils.map')

-- you can toggle multiple session of terminal just by adding number before Ctr-\
-- ( 1+Ctrl+\ ) Toggle Terminal Session 1

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
map {'n', 'tt', ':ToggleTermToggleAll<cr>'}                       -- Toggle All terminal session
