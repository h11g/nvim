local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("Can not find dashboard.nvim")
  return
end

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "  ",
    desc = "Edit keybindings                    ",
    action = "edit ~/.config/nvim/lua/keybindings.lua",
  },
  {
    icon = "  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
}

-- db.custom_header = {
--   [[]],
--   [[          ▀████▀▄▄              ▄█ ]],
--   [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
--   [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
--   [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
--   [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
--   [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
--   [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
--   [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
--   [[   █   █  █      ▄▄           ▄▀   ]],
--   [[                                   ]],
--   [[        [ version : 1.0.0 ]        ]],
--   [[]],
--   [[]],
-- }

db.custom_header = {
  [[]],
  [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
  [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
  [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
  [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
  [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  [[                                                   ]],
  [[                [ version : 1.0.0 ]                ]],
}

db.header_pad = 5
db.center_pad = 3
db.footer_pad = 10
