local on_attach = function(_client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
 
    local opts = { noremap=true, silent=true }

	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, opts)

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").templ.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").zls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").sqls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").ts_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.stdpath("data")
					.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},
})

require("lspconfig").volar.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").tailwindcss.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

require("lspconfig").phpactor.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").elixirls.setup({
    cmd = { "elixir-ls" },
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").nil_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
