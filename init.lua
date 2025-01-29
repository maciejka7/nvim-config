-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.colors_name = "rose-pine"

local variant = { "main", "moon", "dawn" }
local index = 1

vim.keymap.set("n", "<leader>cv", function()
  index = index % #variant + 1
  require("rose-pine").setup({ variant = variant[index] })
  vim.cmd("colorscheme rose-pine")
  print("Switched to rose-pine-" .. variant[index])
end, { desc = "Cycle Rose Pine Variants" })
