return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "latte", -- other options: "mocha", "frappe", "macchiato"
			})
			vim.cmd.colorscheme("catppuccin-latte")
		end,
		opts = function()
			local bufferline = require("catppuccin.groups.integrations.bufferline")
			bufferline.get = bufferline.get or bufferline.get_theme
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-latte",
		},
	},
}
