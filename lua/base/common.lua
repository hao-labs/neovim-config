local opt = vim.opt
local api = vim.api

-- [line number]
-- show line number
opt.number = true

if api.mode() != 'i' then
    -- show relative number
    -- exclude insert mode
    opt.rnu = true
end

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
