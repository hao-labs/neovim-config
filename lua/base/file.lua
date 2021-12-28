local opt = vim.opt
-- [encoding]
-- set vim's encoding
opt.encoding = 'utf-8'
-- write file as utf-8
opt.fileencoding = 'utf-8'

-- [format]
-- use <NL> (new line) for EOL
opt.fileformat = 'unix'

-- [backup_dir]
local backup_dir = vim.fn.stdpath("cache") .. "/backup"
local backup_stat = pcall(os.execute, "mkdir -p " .. backup_dir)

if backup_stat then
    opt.backupdir = backup_dir
    opt.directory = backup_dir
end

-- [undo_dir]
local undo_dir = vim.fn.stdpath("cache") .. "/undo"
local undo_stat = pcall(os.execute, "mkdir -p " .. undo_dir)
local has_persist = vim.fn.has("persistent_undo")

if undo_stat and has_persist == 1 then
    opt.undofile = true
    opt.undodir = undo_dir
end
