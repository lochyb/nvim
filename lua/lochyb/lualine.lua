local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local filename = {
  "filename",
  file_status = true, -- displays file status (readonly status, modified status)
  path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
}

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { filename },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    -- lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
