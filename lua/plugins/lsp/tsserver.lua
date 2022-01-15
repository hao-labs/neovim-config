local on_attach = require('shortcuts.lsp')
return {
    on_attach = function(client, buffnr)
        on_attach(client, buffnr)
        -- to prevent conflict when formatting with null-ls
        -- formatting will be handle by null-ls
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end,
}
