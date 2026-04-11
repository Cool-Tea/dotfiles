vim.g.mapleader = " "

-- netrw keymap
-- vim.keymap.set("n", "<leader>r", "<Cmd>Rexplore<CR>", { desc = "Return to explorer" })
-- vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>", { desc = "Open explorer" })

-- comment keymap
vim.keymap.set("n", "<C-_>", "gcc", { desc = "Toggle comment", remap = true })
vim.keymap.set("v", "<C-_>", "v_gc", { desc = "Toggle comment", remap = true })

-- terminal keymap
vim.keymap.set("n", "<leader>t", "<Cmd>vsplit term://zsh<CR>", { desc = "Open a terminal" })
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Back to buffer mode" })
-- vim.keymap.set("t", "<leader>bd", "<Cmd>bd!<CR>", { desc = "Close terminal" })
-- vim.keymap.set("t", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Switch to next buffer" })
-- vim.keymap.set("t", "<leader>bN", "<Cmd>bprev<CR>", { desc = "Switch to previous buffer" })

-- buffer keymap
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<leader>bN", "<Cmd>bprev<CR>", { desc = "Switch to previous buffer" })
vim.keymap.set("n", "gt", "<Cmd>bnext<CR>", { desc = "Switch to next buffer" }) -- abandon tabs
vim.keymap.set("n", "gT", "<Cmd>bprev<CR>", { desc = "Switch to previous buffer" }) -- abandon tabs
vim.keymap.set("n", "<leader>bd", "<Cmd>bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>fbd", "<Cmd>bd!<CR>", { desc = "Close current buffer (force)" })

-- window keymap
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })

vim.keymap.set("n", "<leader>vs", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sp", "<Cmd>split<CR>", { desc = "Split window horizontally" })

-- line edit keymap
vim.keymap.set("n", "<A-j>", "<Cmd>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<Cmd>m .-2<CR>==", { desc = "Move line up" })

