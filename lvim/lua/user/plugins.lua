------------------------
-- Plugins
------------------------
lvim.plugins = {
	"olexsmir/gopher.nvim",
	"fatih/vim-go",
	"leoluz/nvim-dap-go",
	"nvim-telescope/telescope-project.nvim",
	"simrat39/rust-tools.nvim",
	"mxsdev/nvim-dap-vscode-js",
	"j-hui/fidget.nvim",
	"nvimdev/lspsaga.nvim",
	{
		"toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[\\]],
			})
		end,
	},
	{
		"saecki/crates.nvim",
		version = "v0.3.0",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup({
				null_ls = {
					enabled = true,
					name = "crates.nvim",
				},
				popup = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
	{
		"rmagatti/goto-preview",
		config = function()
			require("goto-preview").setup({
				width = 120, -- Width of the floating window
				height = 25, -- Height of the floating window
				default_mappings = false, -- Bind default mappings
				debug = false, -- Print debug information
				opacity = 30, -- 0-100 opacity level of the floating window where 100 is fully transparent.
				post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{ "stevearc/dressing.nvim" },
	{
		"akinsho/flutter-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
		config = function()
			require("flutter-tools").setup({
				-- flutter_path = "~/development/flutter",
				fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
				ui = {
					-- the border type to use for all floating windows, the same options/formats
					-- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
					border = "rounded",
					-- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
					-- please note that this option is eventually going to be deprecated and users will need to
					-- depend on plugins like `nvim-notify` instead.
					notification_style = "plugin",
				},
				decorations = {
					statusline = {
						-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
						-- this will show the current version of the flutter app from the pubspec.yaml file
						app_version = true,
						-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
						-- this will show the currently running device if an application was started with a specific
						-- device
						device = true,
					},
				},
				outline = {
					open_cmd = "30vnew", -- command to use to open the outline buffer
					auto_open = false, -- if true this will open the outline automatically when it is first populated
				},
				debugger = {
					enabled = true,
					run_via_dap = true,
					register_configurations = function(_)
						local dap = require("dap")
						-- dap.adapters.dart = {
						-- 	type = "executable",
						-- 	command = "node",
						-- 	args = { debugger_path, "flutter" },
						-- }
						dap.set_log_level("TRACE")
						dap.configurations.dart = {}
						require("dap.ext.vscode").load_launchjs()
					end,
				},
				dev_log = {
					enabled = false,
					-- open_cmd = "tabedit", -- command to use to open the log buffer
				},
				lsp = {
					color = { -- show the derived colours for dart variables
						enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
						background = false, -- highlight the background
						foreground = false, -- highlight the foreground
						virtual_text = true, -- show the highlight using virtual text
						virtual_text_str = "■", -- the virtual text character to highlight
					},
					settings = {
						showTodos = true,
						completeFunctionCalls = true,
						renameFilesWithClasses = "prompt", -- "always"
						enableSnippets = true,
						enableSdkFormatter = true,
					},
				},
			})
		end,
	},
}
