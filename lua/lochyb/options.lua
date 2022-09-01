vim.g.mapleader = ","
vim.g.ruler = true
vim.o.termguicolors = true
vim.g.syntax_on = true

vim.g.encoding = "utf-8"
vim.g.fileencoding = "utf-8"
vim.g.showmatch = true
vim.g.showmode = true
vim.g.relativenumber = true
vim.g.backup = false
vim.g.joinspaces = false
vim.g.ignorecase = true
vim.g.incsearch = true
vim.g.smartcase = true
vim.g.hlsearch = true

-- vim.opt.spell = true
-- vim.opt.spelllang = { "en_us" }

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.textwidth = 80
vim.opt.scrolloff = 10

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.foldmethod = 'indent'

vim.g.list = true
vim.opt.listchars:append("space:⋅")

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])
