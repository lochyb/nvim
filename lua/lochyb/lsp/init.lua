local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("mason").setup()
require("mason-lspconfig").setup({
    automatic_installation = true,
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "tsserver",
        "html",
        "cssls",
        "jsonls",
        "phpactor",
    }, 
})

local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, {
                buffer = bufnr
            })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, {
                buffer = bufnr
            })
        end
    }
})

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
    function(server_name)
      lspconfig[server_name].setup({
        on_attach = lsp_attach,
        capabilities = lsp_capabilities,
      })
    end,
  })

require(".lochyb.lsp.opts");
require('.lochyb.lsp.diagnostic');
require('.lochyb.lsp.completion');
