local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "nvim-tree/nvim-tree.lua",
  "shaunsingh/nord.nvim",
  "tweekmonster/startuptime.vim",
  "520Matches/fcitx5.vim",
  "iamcco/markdown-preview.nvim",
  "neovim/nvim-lspconfig", 
  "williamboman/nvim-lsp-installer",
    -- nvim-cmp
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',   
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  -- vsnip
  'hrsh7th/cmp-vsnip' ,
  'hrsh7th/vim-vsnip',
  'rafamadriz/friendly-snippets',
  -- lspkind
  'onsails/lspkind-nvim',

  'CRAG666/code_runner.nvim',
  'nvim-lua/plenary.nvim',
  --'glepnir/dashboard-nvim',
  'nvim-lualine/lualine.nvim',
 	--标题高亮 
  'lukas-reineke/headlines.nvim',
  "nvim-treesitter/nvim-treesitter",
  })
