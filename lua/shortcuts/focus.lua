local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
map {'n', '<leader>fm', ':FocusMaximise<cr>'}       -- Temporarily maximises the focussed window
map {'n', '<leader>fe', ':FocusMaxOrEqual<cr>'}     -- Toggles Between having the splits equalised or the focussed window maximised
