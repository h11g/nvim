local M = {}

M.treesitter = {
  ensure_installed = {
    "json",
    "html",
    "css",
    "vim",
    "lua",
    "javascript",
    "typescript",
    "tsx",
    "scss",
    "rust",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = "   ",
  }
}

return M
