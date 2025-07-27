-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

--alt
map("n", "<A-t>", ":tabedit<CR>", opt)
--map('n', '<A-d>', ':BufferLinePickClose<CR>', opt)
map("n", "<C-q>", ":tabc<CR>", opt)
map("n", "<A-w>", ":w<CR>", opt)
--map('n', '<A-f>', ':Translate<CR>', opt)
map("n", "<A-x>", ":RunCode<CR>", opt)
map("n", "<A-z>", "<C-w>w", opt)
map("n", "<A-left>", "<C-w><left>", opt)
map("n", "<A-right>", "<C-w><right>", opt)
map("n", "<A-up>", "<C-w><up>", opt)
map("n", "<A-down>", "<C-w><down>", opt)
map("n", "<A-m>", ":Neotree<CR>", opt)

-- Ctrl
map("n", "<A-q>", ":q<CR>", opt)

return pluginKeys
