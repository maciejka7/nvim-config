return {
    'nvim-treesitter/nvim-treesitter', 
    build = ":TSUpdate",
    config = function()
local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "lua", "go", "javascript", "typescript", "html", "css", "vue" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  highlight = {enable = true},
  indent = {enable = true},
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
})


  end
    }
