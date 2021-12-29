local opt = vim.opt
local api = vim.api

-- [line number]
-- show line number
opt.number = true
-- show relative number
opt.relativenumber = true

-- [common]
-- Highlight the screen line of the cursor with CursorLine
opt.cursorline = true
-- set visual bells
opt.visualbell = true
-- show matching bracket after last closing
opt.showmatch = true

-- A List is an ordered sequence of items.
-- show indentation
opt.list = true
opt.listchars = "tab:-->,trail:·"
-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5
-- Limit timeout waiting time to reduce the delay of waiting key code sequence
opt.timeoutlen = 200 
opt.ttimeoutlen = 0
-- no waiting for key combination
opt.timeout = false

-- remember where to recover cursor
opt.viewoptions = 'cursor,folds,slash,unix'
