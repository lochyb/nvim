local keymap = vim.keymap.set

local opts = { silent = true }

keymap("i", "jk", "<ESC>", opts)