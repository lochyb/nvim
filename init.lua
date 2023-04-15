require("lochyb.options")
require("lochyb.keymaps")
require("lochyb.plugins")
require("lochyb.lsp")

require("lochyb.theme")

require("lochyb.whichkey")
require("lochyb.lualine")
require("lochyb.telescope")

require("lochyb.gitsigns")

require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        side = "left",
        number = true,
        relativenumber = true,
        mappings = {
            list = {{
                key = "u",
                action = "dir_up"
            }}
        }
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
    renderer = {
        group_empty = true
    }
    -- filters = {
    --   dotfiles = true,
    -- },
})
