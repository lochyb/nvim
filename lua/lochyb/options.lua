vim.g.mapleader = ","
vim.g.ruler = true

vim.g.encoding = 'utf-8'
vim.g.fileencoding = 'utf-8'
vim.g.showmatch = true
vim.g.showmode = true
vim.g.relativenumber = true
vim.g.backup = false
vim.g.joinspaces = false
vim.g.ignorecase = true
vim.g.incsearch = true
vim.g.smartcase = true
vim.g.hlsearch = true

vim.g.list = true

vim.opt.spell = true
vim.opt.spelllang = {'en_us'}

vim.bo.textwidth = 80
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
