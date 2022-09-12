-- https://github.com/ahmedkhalf/project.nvim
-- 输出保存目录
-- :lua print(require("project_nvim.utils.path").historyfile)

local status, project = pcall(require, "project_nvim")
if not status then
  vim.notify("Can not find project.nvim")
  return
end

vim.g.nvim_tree_respect_buf_cwd = 1
project.setup({
  detection_methods = { "lsp", "pattern" },
  patterns = {
    "README.md",
    "Cargo.toml",
    "package.json",
    ".sln",
    ".git",
    "_darcs",
    ".hg",
    ".bzr",
    ".svn",
    "Makefile",
  },
  -- TODO: fixme
  -- datapath = vim.fn.stdpath("data"),
  manual_mode = true,
})

local status_telescope, telescope = pcall(require, "telescope")
if not status_telescope then
  vim.notify("Can not find telescope.nvim")
  return
end
pcall(telescope.load_extension, "projects")
