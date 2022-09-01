-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
-- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = {
--    hint = "orange",
--    error = "#ff0000"
-- }

require("nightfox").setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
    },
    terminal_colors = true,
  },
  palettes = {
    duskfox = {
      fg3 = "#B57614",
      bg3 = "#005f87",
    },
    carbonfox = {
      fg3 = "#9580ff",
      bg3 = "#9580ff",
    },
  },
})

vim.cmd("colorscheme carbonfox")

require("indent_blankline").setup({
  show_current_context = true,
  show_current_context_start = true,
  space_char_blankline = " ",
})

require("colorizer").setup({
  "*", -- Highlight all files, but customize some others.
  css = { css = true }, -- Enable parsing rgb(...) functions in css.
  html = { names = false }, -- Disable parsing "names" like Blue or Gray
})
