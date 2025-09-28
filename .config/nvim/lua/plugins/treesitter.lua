return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = { enable = true },
				indent = { enable = true },
				sync_install = true,
				auto_install = true,
				ensure_installed = {
					"go",
					"bash",
					"c",
					"lua",
					"markdown",
					"vim",
					"vimdoc",
				},
			})
		end,
	},
}
