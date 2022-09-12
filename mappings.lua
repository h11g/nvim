local M = {}

local opt = { noremap = true, silent = true }

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },

    -- move cursor
    ["<C-j>"] = { "5j", "move down 5 line" },
    ["<C-k>"] = { "5k", "move up 5 line", opts = opt },
    ["<C-u>"] = { "10k", "move up 10 line", opts = opt },
    ["<C-d>"] = { "10j", "move down 10 line", opts = opt },

    -- switch between windows
    ["<leader>h"] = { "<C-w>h", "window left" },
    ["<leader>l"] = { "<C-w>l", "window right" },
    ["<leader>j"] = { "<C-w>j", "window down" },
    ["<leader>k"] = { "<C-w>k", "window up" },
  },
  v = {
    ["<C-j>"] = { "5j", "move down 5 line", opts = opt },
    ["<C-k>"] = { "5k", "move up 5 line", opts = opt },

    ["J"] = { ":move '>+1<CR>gv-gv", "move down the selected code", opts = opt },
    ["K"] = { ":move '<-2<CR>gv-gv", "move up the selected code", opts = opt },
  },
  i = {
    ["<C-e>"] = { "<ESC>A", "go to end", opts = opt },
    ["<C-a>"] = { "<ESC>I", "go to ahead", opts = opt },
  }
}

-- more keybinds!

return M
