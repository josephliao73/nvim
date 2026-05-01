require("config.options")
require("config.keymap")
require("config.lazy")


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

local group = vim.api.nvim_create_augroup("NumberToggle", {})
vim.api.nvim_create_autocmd(
  { "BufEnter", "FocusGained", "InsertLeave", "WinEnter" },
  {
    group = group,
    callback = function()
      if vim.o.number then
        vim.o.relativenumber = true
      end
    end,
  }
)

vim.api.nvim_create_autocmd(
  { "BufLeave", "FocusLost", "InsertEnter", "WinLeave" },
  {
    group = group,
    callback = function()
      if vim.o.number then
        vim.o.relativenumber = false
      end
    end,
  }
)
