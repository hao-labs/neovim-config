-- To make key mapping in vim more easier
-- Example:
-- map {'n', '<Leader>w', ':write<CR>'}
-- map {noremap = false, 'n', '<Leader>e', '%'}
-- map {'n', '<Leader>e', '%', noremap = false}
return function(key)
    -- get the extra options
    local opts = {noremap = true}

    for i, v in pairs(key) do
        if type(i) == 'string' then opts[i] = v end
    end

    -- basic support for buffer-scoped keybindings
    local buffer = opts.buffer
    opts.buffer = nil

    if buffer then
        vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
    else
        vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
    end
end
