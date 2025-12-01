return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "mfussenegger/nvim-lint"
  },

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- lua
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,

        -- javascript
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.eslint_d,

        -- python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
      },
    })

    -- Linter for javascript
    -- I have put outside of null_ls.setup({}) cus because it only allows lua table and not assignments
    vim.env.ESLINT_D_PPID = vim.fn.getpid()
    require("lint").linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
    }

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
