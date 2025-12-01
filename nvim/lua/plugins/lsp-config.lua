return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "ts_ls"},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- lua config
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			vim.lsp.config("pyright", {})
			vim.lsp.config("ts_ls", {})

			-- keybinds
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set({ "n", "v" }, "<leader>cd", vim.diagnostic.open_float, {})

      -- lsp enable
			vim.lsp.enable("lua_ls", "pyright", "ts_ls")
		end,
	},
}
