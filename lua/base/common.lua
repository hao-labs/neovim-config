local opt = vim.opt
local api = vim.api

-----------------------------------------------------
-- General
-----------------------------------------------------
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile/temp file
opt.visualbell = true         -- turn on visual bell
opt.showmatch = true          -- show matching bracket after last closing

-----------------------------------------------------
-- Performance
-----------------------------------------------------
opt.hidden = true             -- enable background buffers
opt.history = 100             -- remember n lines in history
opt.lazyredraw = true         -- faster scrolling
opt.synmaxcol = 240           -- max column for syntax hightlight
opt.ttimeoutlen = 0           -- in miliseconds
opt.timeoutlen = 200          -- faster delay of waiting key combination when user typing
opt.timeout = false           -- no waiting for key combination

-----------------------------------------------------
-- Line Number
-----------------------------------------------------
opt.number = true             -- show line number
opt.relativenumber = true     -- show relative number


-- A List is an ordered sequence of items.
opt.list = true               -- show indentation
opt.listchars = 
    "tab:-->,trail:·"         -- list of characters 
opt.scrolloff = 5             -- Minimal number of screen lines to keep above and below the cursor.
