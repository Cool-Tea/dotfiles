return {
  {
    "nvim-mini/mini.completion",
    enabled = false,
    dependencies = {
      "nvim-mini/mini.icons",
      "nvim-mini/mini.snippets",
    },
    version = false,
    config = function()
      require("mini.completion").setup {}
    end,
  },
  {
    "saghen/blink.cmp",
    version = "1.*",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
      appearance = {
        nerd_font_variant = "mono"
      },
      completion = {
        documentation = { auto_show = true }
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  }
}
