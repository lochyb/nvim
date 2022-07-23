local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

require("nvim-lsp-installer").setup {}
require("nvim-lsp-installer").setup
{
	on_attach = require('lochyb.lsp.handlers').on_attach,
	capabilities = require('lochyb.lsp.handlers').capabilities,
}
local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {}
lspconfig.tsserver.setup {

    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end
}
lspconfig.eslint.setup {}
lspconfig.rust_analyzer.setup {}
