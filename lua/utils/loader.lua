local log = require('utils.log').error

local defaultErrorHandler = function(error)
    log(
        'Loading module: '..error,
        'plugins'
    )
end

return function(moduleName, errorHandler)
    errorHandler = errorHandler or defaultErrorHandler

    local status_ok, loadedModule = pcall(
        require,
        moduleName
    )

    if not status_ok then
        errorHandler(loadedModule)
        return
    end

    return loadedModule
end
