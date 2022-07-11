local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "lochyb.lsp.lsp-installer"
require("lochyb.lsp.handlers").setup()
require "lochyb.lsp.null-ls"
