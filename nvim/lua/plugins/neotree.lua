return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- backend utils
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    -- close empty buffer when open a directory
    init = function()
      if vim.fn.argc(-1) == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
          require("neo-tree").setup {
            filesystem = {
              hijack_netrw_behavior = "open_current",
            }
          }
        end
      end
    end,
    config = function()
      require("neo-tree").setup {
        -- close_if_last_window = true,
        popup_border_style = "",
        enable_git_status = true,
        enable_diagnostics = true,
      }
      vim.keymap.set("n", "<leader>e", "<Cmd>Neotree dir=.<CR>")
    end,
  }
}
