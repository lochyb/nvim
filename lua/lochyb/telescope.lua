require("telescope").setup({
  defaults = {
    prompt_prefix = "❯ ",
    selection_caret = "❯ ",
    sorting_strategy = "descending",
    layout_config = {
      horizontal = {
        width_padding = 0.04,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
    },
  },
  pickers = {
    buffers = {
      initial_mode = "normal",
      sort_lastused = true,
      previewer = false,
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          height = 0.35,
          width = 0.35,
          width_padding = 0.04,
          height_padding = 0.1,
          -- preview_width = 0.6,
        },
      },
    },
    find_files = {
      width = {
        previewer = 25,
        results = 30,
      },
    },
  },
  extensions = {},
})
