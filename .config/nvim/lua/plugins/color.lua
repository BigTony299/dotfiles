return {
	{
		"catppuccin/nvim",
		opts = {
			flavour = "latte", -- latte, frappe, macchiato, mocha
		},
		config = function()
			vim.o.termguicolors = true
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
