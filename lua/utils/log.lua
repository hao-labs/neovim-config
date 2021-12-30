local notify = vim.notify
local log = {}

log.info = function(msg, title)
    notify(
        msg,
        vim.log.levels.INFO,
        {title=title}
    )
end

log.error = function(msg, title)
    notify(
        msg,
        vim.log.levels.ERROR,
        {title=title}
    )
end

return log
