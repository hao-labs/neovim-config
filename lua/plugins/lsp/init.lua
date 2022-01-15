local installer = require('plugins.lsp.installer')

installer.addServers({
    'sumneko_lua',
    'tsserver',
    'ansiblels',
    'dockerls',
    'graphql',
    'html',
    'intelephense',
    'rust_analyzer',
    'tailwindcss',
    'yamlls',
})

installer.setup()
