return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  config = function()
    require("barbecue").setup({
      theme = {
        separator = { fg = '#5f7e97' },
        dirname = { fg = '#c5e478' },
      },
      show_dirname = true,
    })
  end,
}
