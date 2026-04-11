vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.autowrite = false

vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.textwidth = 100
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.wrapmargin = 2

vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

vim.opt.mouse = "a"
vim.opt.backspace = "indent,eol,start"

vim.opt.errorbells = false
vim.opt.termguicolors = true

vim.diagnostic.config({
  underline = true,
  virtual_text = { spacing = 2, prefix = "●" },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = "󱐋 ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
    focusable = false,
    style = "minimal",
  },
})

