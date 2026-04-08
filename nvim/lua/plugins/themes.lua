return {
  -- onedark themes
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "darker",
        transparent = true,
      }
      require("onedark").load()
      require("lualine").setup {
        theme = "onedark"
      }
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- options = { theme = "onedark" },
  },
}
