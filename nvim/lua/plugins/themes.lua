return {
  -- onedark themes
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "darker",
        transparent = true,
        highlights = {
          ["NormalFloat"] = { bg = "#2a1f38" },
          ["FloatBorder"] = { bg = "#2a1f38" },
          ["Pmenu"] = { bg = "#2a1f38" },
          ["DiagnosticVirtualTextError"] = { bg = "none" },
          ["DiagnosticVirtualTextWarn"] = { bg = "none" },
          ["DiagnosticVirtualTextInfo"] = { bg = "none" },
          ["DiagnosticVirtualTextHint"] = { bg = "none" },
          ["DiagnosticVirtualTextOk"] = { bg = "none" },
        },
      }
      require("onedark").load()
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function ()
      require("lualine").setup {
        theme = "onedark",
        tabline = {
          lualine_a = { "buffers" },
          lualine_z = { "tabs" },
        },
      }
    end
  },
}
