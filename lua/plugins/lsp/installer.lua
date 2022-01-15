local installer = require("nvim-lsp-installer")
local on_attach = require('shortcuts.lsp')
local utils = {
    servers = {},
    serverSettings = {
        sumneko_lua = 'plugins.lsp.sumneko_lua',
        tsserver = 'plugins.lsp.tsserver',
    }
}

function utils.addServers(servers)
   utils.servers = servers
end

function utils.getCapabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
    return capabilities
end

function utils.merge(...)
    return vim.tbl_deep_extend('force', ...)
end

function utils.getServerSettings(server, options)
    for serverName, path in pairs(utils.serverSettings) do
        if server == serverName then
            options= utils.merge(
                options,
                require(path)
            )
        end
    end

    return options
end

function utils.getSettings(server)
    local options = {
        on_attach = on_attach,
        root_dir = vim.loop.cwd,
        capabilities = utils.getCapabilities(),
        flags = {
            debounce_text_changes = 150,
        },
    }

    return utils.getServerSettings(
        server,
        options
    )
end

function utils.onServerReady(server, requestedServer)
    requestedServer:setup(utils.getSettings(server))
end

function utils.install(server)
   local server_available, requested_server = installer.get_server(server)

    if server_available then

        requested_server:on_ready(function ()
            utils.onServerReady(server, requested_server)
        end)

        if not requested_server:is_installed() then
            -- Queue the server to be installed
            requested_server:install()
        end
    end
end

function utils.setup()
    for _, lsp in ipairs(utils.servers) do
        utils.install(lsp)
    end
end

return utils
