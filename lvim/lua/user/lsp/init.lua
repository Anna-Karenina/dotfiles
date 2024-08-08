reload("user.lsp.languages.dart")
reload("user.lsp.languages.golang")
reload("user.lsp.languages.jabba-script")
reload("user.lsp.languages.rust")
reload("user.lsp.languages.sh")

vim.list_extend(
	lvim.lsp.automatic_configuration.skipped_servers,
	{ "rust_analyzer", "gopls", "bashls", "tsserver", "dartls" }
)
------------------------
-- Formatting
------------------------
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "goimports", filetypes = { "go" } },
	{ command = "gofumpt", filetypes = { "go" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "shfmt", filetypes = { "sh", "zsh" } },
	{
		command = "prettier",
		filetypes = {
			"json",
			"markdown",
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
			"css",
			"scss",
			"vue",
		},
	},
})

lvim.format_on_save = {
	pattern = { "*.go", "*.vue", "*.ts", "*.tsx", "*.jsx", "*.js", "*.json", "*.lua" },
	enabled = true,
	timeout = 5000,
}
