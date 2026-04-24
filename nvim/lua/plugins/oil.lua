return {
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      require("oil").setup {
        default_file_explorer = true,
        columns = {
          "icon",
          "permissions",
          "size",
          "mtime",
        },
        delete_to_trash = false,
        skip_confirm_for_simple_edits = false,
        prompt_save_on_select_new_entry = true,
        cleanup_delay_ms = 5000,
        constrain_cursor = "editable",
        watch_for_changes = true,
        use_default_kemaps = false,
        keymaps = {
          ["g?"] = false,
          ["<leader>?"] = { "actions.show_help", mode = "n" },
          ["<CR>"] = "actions.select",
          ["<C-s>"] = false,
          ["<leader>vs"] = { "actions.select", opts = { vertical = true } },
          ["<C-h>"] = false,
          ["<leader>sp"] = { "actions.select", opts = { horizontal = true } },
          ["<C-t>"] = false,
          ["<leader>pr"] = "actions.preview",
          ["<leader>r"] = { "actions.close", mode = "n" },
          ["q"] = { "actions.close", mode = "n" },
          ["<C-l>"] = false,
          ["-"] = { "actions.parent", mode = "n" },
          ["_"] = false,
          ["<leader>cd"] = { "actions.cd", mode = "n" },
          ["g~"] = false,
          ["<gs>"] = false,
          -- ["<leader>cs"] = { "actions.change_sort", mode = "n" },
          ["<gx>"] = false,
          ["<leader>oe"] = "actions.open_external",
          ["g."] = false,
          ["zh"] = { "actions.toggle_hidden", mode = "n" },
          ["g\\"] = false,
        },
        view_options = {
          show_hidden = true,
        },
      }
      vim.keymap.set("n", "<leader>r", "<Cmd>Oil<CR>", { desc = "Open explorer in full buffer" })
      -- vim.keymap.set("n", "<leader>e", "<Cmd>Oil --float<CR>", { desc = "Open explorer in float buffer" })
    end,
  },
}
