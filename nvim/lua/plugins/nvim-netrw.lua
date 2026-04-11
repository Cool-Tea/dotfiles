return {
  {
    "prichrd/netrw.nvim",
    enabled = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("netrw").setup {
        use_devicons = true,
        mappings = {
          ["q"] = ":q<CR>",
        },
      }
      -- netrw keymap
      vim.keymap.set("n", "<leader>r", vim.cmd.Re)
      vim.keymap.set("n", "<leader>e", vim.cmd.Ve)
      -- use tree style
      vim.g.netrw_liststyle = 3
      -- netrw width
      vim.g.netrw_winsize = 25
    end,
  },
}
