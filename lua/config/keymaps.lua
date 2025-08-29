-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

--alt
map("n", "<A-t>", ":tabedit<CR>", opt)
map("n", "<C-q>", ":tabc<CR>", opt)
map("n", "<A-w>", ":w<CR>", opt)
map("n", "<A-x>", ":RunCode<CR>", opt)
map("n", "<A-z>", "<C-w>w", opt)
map("n", "<A-h>", "<C-w><left>", opt)
map("n", "<A-l>", "<C-w><right>", opt)
map("n", "<A-k>", "<C-w><up>", opt)
map("n", "<A-j>", "<C-w><down>", opt)
map("n", "<A-e>", ":q<CR>", opt)

-- Ctrl

vim.keymap.set("n", "=", [[<cmd>vertical resize +2<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -2<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -


return pluginKeys
