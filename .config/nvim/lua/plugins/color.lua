return {
	{
		"catppuccin/nvim",
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
		},
		config = function()
			vim.o.termguicolors = true
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
