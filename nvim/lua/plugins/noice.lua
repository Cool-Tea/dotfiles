return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim", -- neovim ui lib
      "rcarriga/nvim-notify", -- better vim.notify
    },
    config = function()
      require("noice").setup {
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
          },
        },
        presets = {
          command_palette = true,
        },
        routes = {
          {
            filter = { event = "msg_show", kind = { "shell_out", "shell_err" } },
            view = "popup",
            opts = {
              level = "info",
              skip = false,
              replace = false,
            },
          },
        },
      }
      require("notify").setup {
        background_colour = "#000000",
        render = "minimal",
        stages = "fade",
        timeout = 1000,
      }
      -- vim.notify = require("notify")
    end,
  }
}
