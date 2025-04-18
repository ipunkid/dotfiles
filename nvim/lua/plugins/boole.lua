return {
  "nat-418/boole.nvim",
  event = "VeryLazy",
  config = function ()
    require('boole').setup({
      mappings = {
        increment = '<C-a>',
        decrement = '<C-x>'
      },
      additions = {
        {'left', 'right'},
        {'top', 'bottom'},
        {'before', 'after'},
      },
      allow_caps_additions = {
        {'enable', 'disable'}
        -- enable → disable
        -- Enable → Disable
        -- ENABLE → DISABLE
      }
    })
  end,
}
