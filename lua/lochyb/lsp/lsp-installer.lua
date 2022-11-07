local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

lsp_installer.setup({
  on_attach = require("lochyb.lsp.handlers").on_attach,
  capabilities = require("lochyb.lsp.handlers").capabilities,
})

local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "use" },
      },
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
        },
      },
    },
  },
})
lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    require("lsp_signature").on_attach({
      floating_window = false,
      hint_prefix = "🐏 ",
    }, bufnr)
  end,
})
lspconfig.eslint.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.phpactor.setup{}
lspconfig.pyright.setup{}

