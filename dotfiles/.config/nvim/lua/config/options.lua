-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

-- Clipboard, vim pasting from ssh guest doesn't work, use CTRL+V
-- copied from https://github.com/LazyVim/LazyVim/discussions/4602#discussioncomment-10995590
-- yanky must be disabled to avoid errors
if vim.env.SSH_TTY then
  vim.opt.clipboard:append("unnamedplus")
  local function paste(_)
    return function()
      local content = vim.fn.getreg('"')
      return vim.split(content, "\n")
    end
  end
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = paste("+"),
      ["*"] = paste("*"),
    },
  }
end
