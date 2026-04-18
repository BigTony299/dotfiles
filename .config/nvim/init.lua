require("config.lazy")

-- TODO(ag): no longer necessary after removing lazy (overrides path + blocks auto detection of plugins)
vim.opt.packpath:prepend(vim.fn.stdpath("config"))

vim.cmd("packadd auto-save.nvim")

vim.cmd("packadd Comment.nvim")
require("Comment").setup({
	padding = true,
	sticky = true,
	ignore = nil,
	toggler = {
		line = "<leader>cl",
		block = "<leader>cb",
	},
	extra = {},
	mappings = {
		basic = true,
		extra = false,
	},
	pre_hook = nil,
	post_hook = nil,
})

require("core.personal")
require("core.keymaps")
