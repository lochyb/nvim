require("lochyb.options")
require("lochyb.keymaps")
require("lochyb.plugins")
require("lochyb.dashboard")
require("lochyb.lsp")
require("lochyb.telescope")
require("lochyb.theme")
require("lochyb.autoComplete")
require("lochyb.autopairs")
require("lochyb.gitsigns")
require("lochyb.lualine")
require("lochyb.whichkey")
require("lochyb.comment")

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
      list = { {
        key = "u",
        action = "dir_up",
      } },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  renderer = {
    group_empty = true,
  },
  -- filters = {
  --   dotfiles = true,
  -- },
})

local configs = require("nvim-treesitter.configs")
configs.setup({
  autotag = {
    enable = true,
  },
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  context_commentstring = {
    enable = false,
  },
  config = {
    javascript = {
      __default = "// %s",
      jsx_element = "{/* %s */}",
      jsx_fragment = "{/* %s */}",
      jsx_attribute = "// %s",
      comment = "// %s",
    },
    typescript = {
      __default = "// %s",
      tsx_element = "{/* %s */}",
      tsx_fragment = "{/* %s */}",
      tsx_attribute = "// %s",
      comment = "// %s",
    },
  },
})
