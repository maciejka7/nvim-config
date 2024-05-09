return {
  {

    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({

        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "svelte",
          "lua_ls",
          "graphql",
          "emmet_ls",
          "prismals",
          "gopls",
          "volar",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup_handlers({
        -- default handler for installed servers
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
      })

      local opts = { buffer = bufnr, noremap = true }
      vim.keymap.set("n", "<C-k><C-i>", vim.lsp.buf.hover, { desc = "Show code hover information" })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration"})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition"})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {desc = "Go to implementation"})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references"})
      vim.keymap.set("n", "<C-k><C-s>", vim.lsp.buf.signature_help, opts)
      --vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
      --  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
      -- vim.keymap.set('n', '<space>wl', function()
      --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      --end, opts)
      vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {desc = "Rename"})
      vim.keymap.set("n", "<space>d", vim.diagnostic.open_float, {desc = "Show diagnostics"})
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev,{desc = "Go to prev diagnostics"})
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {desc = "Go to next diagnostics"})
      vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, {desc = "Show diagnostic list"})
    end,
  },
}
