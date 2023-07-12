-- base
require "options"
require "keymaps"
require "plugins"

require "configs.nord"
require "configs.tree"
require "configs/coderunner"
require "configs/lualine"
require "configs/headlines"
--require("configs/dashboard")

--lsp
require "lsp/setup"
require "lsp/nvim-cmp"


require'lspconfig'.pylsp.setup{}
require'lspconfig'.clangd.setup{}


requires = { 'kyazdani42/nvim-web-devicons', opt = true }
