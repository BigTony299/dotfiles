vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, opts)

vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

vim.lsp.config("gopls", {
	cmd = { "gopls" },
	filetypes = { "go" },
	root_markers = { "go.mod" },
})
vim.lsp.enable("gopls")

vim.lsp.config("rust_analyzer", {
	cmd = { "rust_analyzer" },
	filetypes = { "rs" },
	root_markers = { "cargo.toml" },
})
vim.lsp.enable("rust_analyzer")

vim.lsp.config("templ", {
	cmd = { "templ", "lsp" },
	filetypes = { "templ" },
	root_markers = { "go.mod" },
})
vim.lsp.enable("templ")

vim.lsp.config("zls", {
	cmd = { "zls" },
	filetypes = { "zig" },
	root_markers = {},
})
vim.lsp.enable("zls")

vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
	root_markers = { "package.json" },
})
vim.lsp.enable("ts_ls")

vim.lsp.config("tailwindcss", {
	cmd = { "tailwindcss-language-server" },
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
	root_markers = { "package.json" },
})
vim.lsp.enable("tailwindcss")

vim.lsp.config("phpactor", {
	cmd = { "phpactor" },
	filetypes = { "php" },
	root_markers = {},
})
vim.lsp.enable("phpactor")

vim.lsp.config("elixirls", {
	cmd = { "elixir-ls" },
	filetypes = { "ex", "exs" },
	root_markers = {},
})
vim.lsp.enable("elixirls")

vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {},
})
vim.lsp.enable("lua_ls")

vim.lsp.config("clangd", {
	cmd = { "clangd" },
	filetypes = { "c", "h", "cpp", "hpp" },
	root_markers = { ".clangd" },
})
vim.lsp.enable("clangd")
