local map = require('utils.map')

-- vim mode
-- n  Normal mode map. Defined using ':nmap' or ':nnoremap'.
-- i  Insert mode map. Defined using ':imap' or ':inoremap'.
-- v  Visual and select mode map. Defined using ':vmap' or ':vnoremap'.
-- x  Visual mode map. Defined using ':xmap' or ':xnoremap'.
-- s  Select mode map. Defined using ':smap' or ':snoremap'.
-- c  Command-line mode map. Defined using ':cmap' or ':cnoremap'.
-- o  Operator pending mode map. Defined using ':omap' or ':onoremap'.

-- remap is an option that makes mappings work recursively
-- noremap is a non-recursive 

-- Map command
-- :nmap - Display normal mode maps
-- :imap - Display insert mode maps
-- :vmap - Display visual and select mode maps
-- :smap - Display select mode maps
-- :xmap - Display visual mode maps
-- :cmap - Display command-line mode maps
-- :omap - Display operator pending mode maps

-- [normal-mode mapping]
-- (,l) Toggle list (display unprintable characters)
map {'n', '<Leader>l', ':set list!<CR>'}
-- (Ctrl+N) to toggle nvim tree
map {'n', '<C-n>', ':NvimTreeToggle<CR>', noremap = true}
-- (F5) to source lua file
map {'n', '<F5>', ':luafile %<CR>', noremap = true}

-- [insert-mode mapping]
-- (kj) alias for esc button
map {'i', 'kj', '<ESC>'}
