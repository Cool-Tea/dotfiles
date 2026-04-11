return {
  {
    "nvim-mini/mini.comment",
    enabled = false,
    version = false,
    config = function()
      require("mini.comment").setup {
        mappings = {
          comment = "<C-/>",
          comment_line = "",
          comment_visual = "<C-/>",
          textobject = "<C-/>",
        },
      }
    end,
  },
}
