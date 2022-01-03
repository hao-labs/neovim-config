local installer = require("nvim-lsp-installer")
local nvim_lsp = require('lspconfig')
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = require('key-map.lsp')

-- Install Language server
local function install_lsp(lsp)
    local ok, server = installer.get_server(lsp)

    if ok then
        if not server:is_installed() then
            server:install()
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
    install_lsp(lsp)

    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end

installer.on_server_ready(function(server)
    local opts = {}

    if server.name == "sumneko_lua" then
        opts = {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim', 'use' }
                    },
                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = {
                            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                        }
                    }
                }
            }
        }
    end

    server:setup(opts)
end)
