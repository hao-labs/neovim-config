local git = {}

git.term = function ()
    local ok, term = pcall(require, 'toggleterm')

    if not ok then
        return false
    end

    return term
end

git.addCurrentFile = function (count)
    local term = git.term()

    if term then

        term.exec(
            'git add ' .. vim.fn.expand('%'),
            count,
            12,
            nil,    -- dir
            nil,    -- direction
            true,   -- go_back
            false   -- open
        )

        local notify = require('notify')
        notify(
            vim.fn.expand('%'),
            'INFO',
            {
                title = 'Git Add Curent File',
            }
        )
    end
end

git.commit = function (count)
    local term = git.term()

    if term then
        term.exec(
            'git commit',
            count,
            12,
            nil,    -- dir
            nil,    -- direction
            false   -- go_back
        )
    end
end

return git
