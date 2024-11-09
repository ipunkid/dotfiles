return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>fh",
      function()
        require("fzf-lua").files({
          cwd = vim.fn.expand("~"),
          -- hidden = false,
          -- fd_opts = "--type f --exclude .git --no-hidden"
        })
      end,
      desc = "Find Files (Home Dir)",
    },
  },
}
