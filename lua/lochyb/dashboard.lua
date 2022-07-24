local db = require("dashboard")
db.custom_header = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}
db.preview_command = ""
db.custom_center = {
  {
    icon = "  ",
    desc = "Recently opened files                   ",
    action = "Telescope oldfiles",
    shortcut = ", s r",
  },
  {
    icon = "  ",
    desc = "Find  File                              ",
    action = "Telescope find_files",
    shortcut = ", f ",
  },
  {
    icon = "  ",
    desc = "File Browser                            ",
    action = "NvimTreeToggle",
    shortcut = ", x",
  },
  {
    icon = "  ",
    desc = "Live Grep                              ",
    action = "Telescope live_grep",
    shortcut = ", F",
  },
}
