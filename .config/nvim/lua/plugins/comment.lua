return {
	"numToStr/Comment.nvim",
	opts = {
		---Add a space b/w comment and the line
		padding = true,
		---Whether the cursor should stay at its position
		sticky = true,
		ignore = nil,
		toggler = {
			---Line-comment toggle keymap
			line = "<leader>cl",
			---Block-comment toggle keymap
			block = "<leader>cb",
		},
		extra = {},
		mappings = {
			basic = true,
			extra = false,
		},
		pre_hook = nil,
		post_hook = nil,
	},
}
