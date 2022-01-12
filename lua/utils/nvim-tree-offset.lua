local tree = {}

tree.view = function ()
    local view_status_ok, view = pcall(require, "nvim-tree.view")

    if not view_status_ok then
        return false
    end

    return view
end

tree.state = function ()
    if package.loaded["bufferline.state"] then
        return require("bufferline.state")
    end

    return false
end

tree.open = function()
    local view = tree.view()

    if vim.g.nvim_tree_follow == 1 then
        require("nvim-tree").find_file(true)
    end

    if view and not view.win_open() then
        local state = tree.state()

        if state then
            state.set_offset(31, "File Explorer")
        end

        require("nvim-tree.lib").open()
    end
end

tree.close = function ()
    local state = tree.state()

    if state then
        -- Offset the bufferline
       state.set_offset(0)
    end

    -- Close NvimTree
    require("nvim-tree").close()
end

tree.toggle = function()
    local view = tree.view()

    if view and view.win_open() then
        tree.close()
    else
        tree.open()
    end
end

-- register command NvimTreeToggleOffset
-- so we can
tree.register_cmd = function ()
    vim.cmd [[
        command! NvimTreeToggleOffset lua require'utils.nvim-tree-offset'.toggle()
    ]]
end

return tree
