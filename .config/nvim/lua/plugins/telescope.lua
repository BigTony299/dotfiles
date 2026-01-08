return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "v0.2.0",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			defaults = {
				mappings = {
					n = {
						["<c-d>"] = require("telescope.actions").delete_buffer,
					}, -- n
					i = {
						["<C-h>"] = "which_key",
						["<c-d>"] = require("telescope.actions").delete_buffer,
					}, -- i
				}, -- mappings
			}, -- defaults
		},
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						width = 0.99,
						height = 0.99,
						prompt_position = "top",
                        preview_width = 0.7,
						horizontal = {
							preview_cutoff = 0,
						},
						vertical = {
							preview_cutoff = 0,
						},
					},
					sorting_strategy = "ascending",
					winblend = 0,
				},
			})
		end,
	},
}
