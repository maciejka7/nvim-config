return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-neotest/neotest-go",
  },
  config = function()
    -- config for go:
    local neotest_ns = vim.api.nvim_create_namespace("neotest")
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)

    require("neotest").setup({
      -- your neotest config here
      adapters = {
        require("neotest-go"),
      },
    })
    -- key maps:
    -- vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc = "Test nearest" })
    -- vim.keymap.set("n", "<leader>tT", ":TestFile<CR>", { desc = "Test currnet file" })
    -- vim.keymap.set("n", "<leader>ta", ":TestSuite<CR>", { desc = "Test suite" })
    -- vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc = "Test latest case" })
    -- vim.keymap.set("n", "<leader>tg", ":TestVisit<CR>", { desc = "Visit test" })
    -- vim.cmd("let test#strategy = 'vimux'")
  end,
}
