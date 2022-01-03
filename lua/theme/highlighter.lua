local M = {
    component = {
        path = 'theme.components.',
        lists = {
            'common',
            'floating-window',
            'pop-up',
            'telescope',
            'comment',
            'gitsigns',
            'nvim-tree',
        }
    }
}

M.setColors = function(colors)
    M.colors = colors
end


M.getComponentPath = function(componentName)
    return M.component.path .. componentName
end

M.loadComponent = function(componentName)
    local not_ok, component = pcall(
        require, 
        M.getComponentPath(componentName)
    )

    if(component) then
        component.apply(M.colors)
    end
end

M.loadComponents = function(components)
    local listComponents = components or M.component.lists

    for key, componentName in ipairs(listComponents) do
        M.loadComponent(componentName)
    end
end

M.handle = function(colors)
    M.setColors(colors)
    M.loadComponents()
end

return M
