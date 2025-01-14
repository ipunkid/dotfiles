return {
  'akinsho/toggleterm.nvim',
  cmd = 'ToggleTerm',
  event = "VeryLazy",
  config = function ()
    require("toggleterm").setup({
      size = 18,
      open_mapping = [[<c-\>]],
      shade_terminals = false,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'float',
      close_on_exit = true,
      auto_scroll = true,
      shell = vim.o.shell,
      winbar = {
        enabled = false,
      },
    })
  end
}
