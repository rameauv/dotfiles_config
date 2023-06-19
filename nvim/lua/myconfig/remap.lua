vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "-", "=")
vim.keymap.set("n", "°", "(")
vim.keymap.set("n", "9", "{")
vim.keymap.set("n", "0", "}")
vim.keymap.set("n", "_", ")")
vim.keymap.set("n", "7", "[")
vim.keymap.set("n", "8", "]")
vim.keymap.set("n", "&", "1")
vim.keymap.set("n", "é", "2")
vim.keymap.set("n", "\"", "3")
vim.keymap.set("n", "'", "4")
vim.keymap.set("n", "(", "5")
vim.keymap.set("n", "§", "6")
vim.keymap.set("n", "è", "7")
vim.keymap.set("n", "!", "8")
vim.keymap.set("n", "ç", "9")
vim.keymap.set("n", "à", "0")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-z>", "<C-w>")
