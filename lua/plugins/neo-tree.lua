return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  vim.keymap.set("n", "<leader>ee", ":Neotree filesystem reveal right <CR>", { desc = "Show files tree" }),
  vim.keymap.set("n", "<leader>ex", ":Neotree filesystem close <CR>", { desc = "Close files tree" }),
}
