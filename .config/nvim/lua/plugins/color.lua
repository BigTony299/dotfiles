 return {
 	{
 		"catppuccin/nvim",
 		config = function()
 			require("catppuccin").setup({
 				flavour = "mocha", -- latte, frappe, macchiato, mocha
 			})
 			vim.o.termguicolors = true
 			vim.cmd.colorscheme("catppuccin")
 		end,
 	},
 }
