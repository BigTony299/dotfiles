require("config.lazy")

-- TODO(ag): no longer necessary after removing lazy (overrides path + blocks auto detection of plugins)
vim.opt.packpath:prepend(vim.fn.stdpath("config"))

-- AUTO-SAVE
vim.cmd("packadd auto-save.nvim")

-- COMMENT
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

-- HOP
vim.cmd("packadd hop.nvim")
require("hop").setup({
	keys = "etovxqpdygfblzhckisuran",
})

-- COLOR
vim.cmd("packadd vim-colors-plain")
vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd.colorscheme("plain")

local bg = "#1e1e2e"
local fg = "#cccccc"

vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "NormalNC", { bg = bg })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })

-- TREESITTER
vim.cmd("packadd nvim-treesitter")

-- CONFORM
vim.cmd("packadd conform.nvim")
require("conform").setup({
	formatters = {
		clangfmt = {
			command = "clang-format",
			args = {
				"--style=file",
				"--fallback-style=LLVM",
			},
		},
		odinfmt = {
			command = "odinfmt",
			args = { "-stdin" },
			stdin = true,
		},
	},
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "gofmt", "golines", "gci" },
		templ = { "templ" },
		zig = { "zigfmt" },
		sql = { "pg_format" },
		rust = { "rustfmt" },
		html = { "prettier" },
		css = { "prettier" },
		vue = { "prettier" },
		php = { "pint" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		json = { "prettier" },
		elixir = { "mix" },
		toml = { "taplo" },
		python = { "black" },
		c = { "clangfmt" },
		cpp = { "clangfmt" },
		nix = { "nixfmt" },
		odin = { "odinfmt" },
	},
})

require("core.personal")
require("core.keymaps")
