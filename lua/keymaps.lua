local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

--alt
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)
map('n', '<A-t>', ':tabedit<CR>', opt)
--map('n', '<A-d>', ':BufferLinePickClose<CR>', opt)
map('n', '<A-q>', ':tabc<CR>', opt)
map('n', '<A-w>', ':w<CR>', opt)
--map('n', '<A-f>', ':Translate<CR>', opt)
map('n', '<A-r>', 'gt', opt)
--map('n', '<A-x>', ':RunCode<CR>', opt)
map('n', '<A-e>', 'gT', opt)
map('n', '<A-z>', '<C-w>w', opt)
map('n', '<A-left>', '<C-w><left>', opt)
map('n', '<A-right>', '<C-w><right>', opt)
map('n', '<A-up>', '<C-w><up>', opt)
map('n', '<A-down>', '<C-w><down>', opt)

-- Ctrl
map('n', '<C-q>', ':q<CR>', opt)

 -- 上一个
map('n','<C-k>', 'cmp.mapping.select_prev_item()', opt)
-- 下一个
map('n','<C-j>' , 'cmp.mapping.select_next_item()', opt)

return pluginKeys

