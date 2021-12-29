local map = require('utils.map')

-- =========== Split Window Navigation ===========
map {'n', '<C-h>', '<C-w>h'} -- ( ctrl+h ) Jump Left
map {'n', '<C-j>', '<C-w>j'} -- ( ctrl+j ) Jump Down
map {'n', '<C-k>', '<C-w>k'} -- ( ctrl+k ) Jump Top
map {'n', '<C-l>', '<C-w>l'} -- ( ctrl+l ) Jump Right
-- =========== Split Window Navigation ===========

-- ============= Tab navigation ==============
-- Move to previous/next
map {'n', ']]', ':BufferNext<CR>'}         -- ( ]] ) Jump next tab
map {'n', '[[', ':BufferPrevious<CR>'}     -- ( [[ ) Jump previous tab
map {'n', '{{', ':BufferMoveNext<CR>'}     -- ( }} ) Move tab position to right
map {'n', '}}', ':BufferMovePrevious<CR>'} -- ( {{ ) Move tab position to left
-- Goto buffer in position...
map {'n', '<A-1>', ':BufferGoto 1<CR>'}    -- ( Alt+1 ) Jump to tab position 1
map {'n', '<A-2>', ':BufferGoto 2<CR>'}    -- ( Alt+2 ) Jump to tab position 2
map {'n', '<A-3>', ':BufferGoto 3<CR>'}    -- ( Alt+3 ) Jump to tab position 3
map {'n', '<A-4>', ':BufferGoto 4<CR>'}    -- ( Alt+4 ) Jump to tab position 4
map {'n', '<A-5>', ':BufferGoto 5<CR>'}    -- ( Alt+5 ) Jump to tab position 5
map {'n', '<A-6>', ':BufferGoto 6<CR>'}    -- ( Alt+6 ) Jump to tab position 6
map {'n', '<A-7>', ':BufferGoto 7<CR>'}    -- ( Alt+7 ) Jump to tab position 7
map {'n', '<A-8>', ':BufferGoto 8<CR>'}    -- ( Alt+8 ) Jump to tab position 8
map {'n', '<A-9>', ':BufferGoto 9<CR>'}    -- ( Alt+9 ) Jump to tab position 9
map {'n', '<A-0>', ':BufferLast<CR>'}      -- ( Alt+0 ) Jump to Last tab
-- Close buffer
map {'n', '<A-c>', ':BufferClose<CR>'}     -- ( Alt+c ) Close Tab
map {'n', '<C-p>', ':BufferPick<CR>'}
-- ============= Tab navigation ==============
