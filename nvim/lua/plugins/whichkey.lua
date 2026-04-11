return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function ()
      require("which-key").setup {
        preset = "helix",
        delay = 500,
      }
      vim.keymap.set("n", "<leader>?", function ()
        require("which-key").show({ global = false })
      end, { desc = "Show buffer local keymaps" })
    end
  },
}
