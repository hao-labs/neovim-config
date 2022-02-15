local tree = {}

tree.view = function ()
  local view_status_ok, view = pcall(require, "nvim-tree.view")

  if not view_status_ok then
    return false
  end

  return view
end

tree.base = function ()
  local tree_status_ok, base = pcall(require, "nvim-tree")

  if not tree_status_ok then
    return false
  end

  return base
end

tree.state = function ()
  if package.loaded["bufferline.state"] then
    return require("bufferline.state")
  end

  return false
end

tree.toggleOffset = function (isOpen)
  local state = tree.state()

  if state and isOpen then
    state.set_offset(31, "File Explorer")
  else
    -- Offset the bufferline
    state.set_offset(0)
  end
end

tree.toggleView = function (view)
  local base = tree.base()

  if view.is_visible() then
    view.close()
  elseif base then
    base.open()
  end

  tree.toggleOffset(view.is_visible())
end

tree.toggle = function()
  local view = tree.view()

  if view then
    tree.toggleView(view)
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
