-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.mdx",
  callback = function()
    local date = os.date("%Y-%m-%d")

    local lines = {
      "---",
      'title: " "',
      "date: " .. date,
      "categories:",
      '  - " "',
      "tags:",
      '  - " "',
      "---",
      "",
    }

    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
  end,
})
