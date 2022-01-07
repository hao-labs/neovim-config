local installer = require("nvim-lsp-installer")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
    },
}

local on_attach = require('shortcuts.lsp')

local function getOptions(server)
    local opts = {
        on_attach = on_attach,
        root_dir = vim.loop.cwd,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        },
    }

    if server == "sumneko_lua" then
        opts.settings = {
            Lua = {
                diagnostics = {
                    globals = {
                        'vim',
                        'use',
                    }
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                    },
                    maxPreload= 100000,
                    preloadFileSize = 10000
                },
                telemetry = {
                    enable = false
                }
            }
        }
    end

    return opts
end

local function install(server)
    local server_available, requested_server = installer.get_server(server)

    if server_available then

        requested_server:on_ready(function ()
            requested_server:setup(
                getOptions(server)
            )
        end)

        if not requested_server:is_installed() then
            -- Queue the server to be installed
            requested_server:install()
        end
    end
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
    'sumneko_lua',
    'tsserver',
    'ansiblels',
    'dockerls',
    'eslint',
    'graphql',
    'html',
    'intelephense',
    'rust_analyzer',
    'tailwindcss',
    'yamlls',
}

for _, lsp in ipairs(servers) do
    install(lsp)
end
