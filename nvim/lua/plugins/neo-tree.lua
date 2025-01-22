return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    event = "VeryLazy",
    config = function ()
      require("neo-tree").setup({
        sources = {
          "filesystem",
          -- "buffers",
          "git_status",
        },
        enable_git_status = false,
        enable_diagnostics = true,
        source_selector = {
          winbar = true,
          statusline = false,
        },
        window = {
          -- position = "float",
          width = 35,
        },
        popup_border_style = "rounded",
        default_component_configs = {
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            folder_empty_open = "",
          },
          name = {
            use_git_status_colors = true,
          },
          git_status = {
            symbols = {
              -- Change type
              added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
              modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
              deleted   = "✖",-- this can only be used in the git_status source
              renamed   = "󰁕",-- this can only be used in the git_status source
              -- Status type
              untracked = "◌",
              ignored   = "",
              unstaged  = "󰄱",
              staged    = "",
              conflict  = "",
            }
          },
        },
        filesystem = {
          follow_current_file = {
            enabled = true, -- this will find and focus the file in the active buffer every time
            leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:neotree reveal`
          },
            bind_to_cwd = true,
        },
      })
    end
}
