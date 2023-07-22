-- base
require "options"
require "keymaps"
require "plugins"
--plugin
require "configs.nord"
require "configs.tree"
require "configs/coderunner"
require "configs/lualine"
require "configs/headlines"
require("configs/dashboard")

--lsp
require "lsp/setup"
require "lsp/nvim-cmp"
--lang
require'lspconfig'.pylsp.setup{}
require'lspconfig'.marksman.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.rust_analyzer.setup{}



requires = { 'kyazdani42/nvim-web-devicons', opt = true }

