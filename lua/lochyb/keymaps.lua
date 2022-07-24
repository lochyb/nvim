local keymap = vim.keymap.set

local opts = { silent = true }

keymap("i", "jk", "<ESC>", opts)

-- formatting on control L
-- keymap("n", "<C-L>", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
