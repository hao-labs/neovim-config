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
        term.exec({
            cmd = 'git add ' .. vim.fn.expand('%'),
            num = count,
            size = 12,
            open = 0
        })
    end
end

git.commit = function (count)
    local term = git.term()

    if term then
        term.exec(
            'git commit',
            count,
            12
        )
    end
end

return git
