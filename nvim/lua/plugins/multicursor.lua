return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
    init = function()
      vim.g.VM_maps = {
        ["Mouse Cursor"] = "<A-LeftMouse>"
      }
    end,
  },
}
