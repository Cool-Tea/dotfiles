return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install {
        "lua",
        "c", "cpp",
        "markdown", "typst",
      }
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "lua", "c", "cpp", "markdown" },
        callback = function()
          -- syntax highlighting, provided by Neovim
          vim.treesitter.start()
          -- folds, provided by Neovim
          -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          -- vim.wo.foldmethod = 'expr'
          -- indentation, provided by nvim-treesitter
          -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end
  },
}
