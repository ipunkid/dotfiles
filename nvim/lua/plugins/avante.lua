return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  build = "make",
  opts = {
    provider = "openai",
    openai = {
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat",
      timeout = 30000,
      temperature = 0,
      max_tokens = 4096,
    },
    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
      minimize_diff = true,
    },
  },

  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
}
