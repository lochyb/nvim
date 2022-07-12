require "lochyb.options"
require "lochyb.keymaps"
require "lochyb.plugins"
require "lochyb.lsp"
require "lochyb.theme"
require "lochyb.autoComplete"
require "lochyb.autopairs"
require "lochyb.gitsigns"
-- require "lochyb.bufferline"
require "lochyb.lualine"
require "lochyb.whichkey"


require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        side = "right",
        number = true,
        relativenumber = true,
        mappings = {
            list = {{
                key = "u",
                action = "dir_up"
            }}
        }
    },
    renderer = {
        group_empty = true
    },
    filters = {
        dotfiles = true
    }
})

local configs = require 'nvim-treesitter.configs'
configs.setup {
    ensure_installed = 'all',
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}
