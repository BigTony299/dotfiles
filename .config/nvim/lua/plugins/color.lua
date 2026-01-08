return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 		})
	-- 		vim.o.termguicolors = true
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
	{
		"andreypopp/vim-colors-plain",
		config = function()
			vim.o.background = "dark"
			vim.o.termguicolors = true
			vim.cmd.colorscheme("plain")

			local bg = "#1e1e2e"
			local fg = "#cccccc"

			vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = bg })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
		end,
	},
}
