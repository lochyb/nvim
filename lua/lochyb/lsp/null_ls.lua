local status, null_ls = pcall(require, "null-ls")
if not status then
    vim.notify("Error null-ls")
    return
end

null_ls.setup({
    sources = {
        -- gitsigns integration
        null_ls.builtins.code_actions.gitsigns,

        -- Formatting
        -- Frontend
        null_ls.builtins.formatting.javascript,
        null_ls.builtins.formatting.javascriptreact,
        null_ls.builtins.formatting.typescript,
        null_ls.builtins.formatting.typescriptreact,
        null_ls.builtins.formatting.scss,
        null_ls.builtins.formatting.css,
        null_ls.builtins.formatting.prettier,
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- Diagonstics
        null_ls.builtins.diagnostics.eslint,
        -- Completion
        null_ls.builtins.completion.spell,

    },
})