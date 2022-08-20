local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map('n', '<A-t>', ':tabedit<CR>', opt)
map('n', '<A-q>', ':tabc<CR>', opt)
map('n', '<C-q>', ':q<CR>', opt)
map('n', '<A-w>', ':w<CR>', opt)
map('n', '<A-s>', 'gt', opt)
map('n', '<A-a>', 'gT', opt)
map('n', '<A-x>', '<C-w>w', opt)
map('n', '<A-o>', ':split<CR>', opt)
map('n', '<A-l>', ':vsplit<CR>', opt)
map('n', '<A-o>', '', opt)

return pluginKeys
