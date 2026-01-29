return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      auto_install = true,
      ignore_install = { 'org' },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
