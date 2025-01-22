return {
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		name = "night-owl",
		config = function()
			require("night-owl").setup({
        transparent_background = true,
      })
			vim.cmd.colorscheme("night-owl")
			vim.cmd("highlight BufferLineSeparator guibg=None guifg=#161821")
			vim.cmd("highlight NoicePopup guibg=None")
		end,
	},
 }
