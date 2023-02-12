require "user.options"
require "user.plugins"
require "user.keymaps"

require "config.nvim-tree"
require "config.coc"
require "config.fzf"
require "config.treesitter"
require "config.lualine"
require "config.md-img-paste"
require "config.coderunner"
require "config.bufferline"

require "onenord.init"

require('onenord').setup()
vim.cmd([[autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE]])

