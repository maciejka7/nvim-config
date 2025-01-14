return {
  -- Insert mode key mappings
  i = {
    -- Map Ctrl + Space to trigger completion
    ["<C-leader>"] = {
      function()
        require("cmp").complete()
      end,
      desc = "Trigger autocomplete",
    },
  },
}
