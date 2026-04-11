return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
    -- lazy = false,
    init = function()
      vim.g.VM_maps = {
        ["Mouse Cursor"] = "<A-LeftMouse>"
      }
    end,
  },
}
