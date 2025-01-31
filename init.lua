-- base
require "options"
require "keymaps"
require "plugins"
--plugin
require "configs.nord"
require "configs.neorg"
require "configs.tree"
require "configs.coderunner"
require "configs.lualine"
require "configs.headlines"
require("configs.mason")
--require "configs.cmake"
require("configs.dashboard")

--lsp
require "lsp.init"



requires = { 'kyazdani42/nvim-web-devicons', opt = true }

vim.o.guifont = "Hack Nerd Font:h10" 
vim.g.neovide_transparency = 0.8

