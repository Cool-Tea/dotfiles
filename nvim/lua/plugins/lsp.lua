return {
  -- LSP installer
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        keymaps = {
          toggle_help = "<leader>?",
        },
      },
    },
  },
  -- LSP config manager
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.enable("clangd") -- use system clangd
      vim.lsp.config["*"] = {
        capabilities = require("blink.cmp").get_lsp_capabilities()
      }
    end,
  },
  -- better integration
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
}
