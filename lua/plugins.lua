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
  "nvim-tree/nvim-tree.lua",  --文件树
  "shaunsingh/nord.nvim",  --主题
  "tweekmonster/startuptime.vim",  --打开时间
  "520Matches/fcitx5.vim",  --中文输入法
  "iamcco/markdown-preview.nvim",  --md预览
  --lsp配置
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

  'nvim-lua/plenary.nvim',

  'glepnir/dashboard-nvim', --启动页
  'nvim-tree/nvim-web-devicons', --提供一些图标？
  'CRAG666/code_runner.nvim',  --代码运行
  'nvim-lualine/lualine.nvim',  --状态栏
  'lukas-reineke/headlines.nvim',	--标题高亮
  "nvim-treesitter/nvim-treesitter",  --语法高亮
  'norcalli/nvim-colorizer.lua',  --颜色高亮
  'ibhagwan/fzf-lua', --fzf
  'jiangmiao/auto-pairs',--符号补全
  'p00f/clangd_extensions.nvim',--clang支持
  'mzlogin/vim-markdown-toc', --markdown 目录
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  })


