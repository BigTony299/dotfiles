return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				clangfmt = {
					command = "clang-format",
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
				c = { "clang-format", args = "--style=file --fallback-style=LLVM" },
				nix = { "nixfmt" },
			},
		},
	},
}
