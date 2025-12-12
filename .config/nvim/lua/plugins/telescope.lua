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
	},
}
