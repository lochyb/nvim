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
      bg3 = "#458588",
    },
  },
})

vim.cmd("colorscheme Duskfox")
