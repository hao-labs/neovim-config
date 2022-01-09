local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
map {'n', 'gr', ':Lspsaga lsp_finder<CR>'}              -- Get Related Definition and Reference on current cursor
map {'n', '<space>ca', ':Lspsaga code_action<CR>'}      -- Get Code Action from current diagnostic result
map {'n', '<space>rn', ':Lspsaga rename<CR>'}           -- Rename current symbol based on cursor(variable, function, etc)
map {'n', 'K', ':Lspsaga hover_doc<CR>'}                -- Get Related documentation
map {'n', '[d', ':Lspsaga diagnostic_jump_prev<CR>'}    -- Jump to Previous Diagnostic
map {'n', ']d', ':Lspsaga diagnostic_jump_next<CR>'}    -- Jump to Previous Diagnostic
map {                                                   -- Jump to previous page/scroll on current buffer/file
    'n',
    '<C-u>',
    "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>"
}
map {                                                   -- Jump to next page/scroll on current buffer/file
    'n',
    '<C-d>',
    "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>"
}

-------------------------------------------------------------------
-- Visual Mode Key Bindings
-------------------------------------------------------------------
map {'x', '<space>ca', ':Lspsaga code_action<CR>'}      -- Get Code Action from current diagnostic result
