local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map('n', '<A-t>', ':tabedit<CR>', opt)
map('n', '<A-q>', ':tabc<CR>', opt)
map('n', '<A-w>', ':w<CR>', opt)
map('n', '<A-r>', 'gt', opt)
map('n', '<A-e>', 'gT', opt)
map('n', '<A-x>', '<C-w>w', opt)
map('n', '<A-left>', '<C-w><left>', opt)
map('n', '<A-right>', '<C-w><right>', opt)
map('n', '<A-up>', '<C-w><up>', opt)
map('n', '<A-down>', '<C-w><down>', opt)

-- Ctrl
map('n', '<C-q>', ':q<CR>', opt)



return pluginKeys
