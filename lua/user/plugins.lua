return require('packer').startup(function()
    	use 'wbthomason/packer.nvim'
		--theme
		use 'rmehri01/onenord.nvim'
		--coc
		use 'neoclide/coc.nvim'
		--fzf
		use 'vijaymarupudi/nvim-fzf'
		--vim_doc
		use 'vimcn/vimcdoc'
		--翻译
		use 'voldikss/vim-translator'
		--将剪切板中的图片插入为Markdown 代码
		use 'ferrine/md-img-paste.vim'
		--markdown目录
		use 'mzlogin/vim-markdown-toc'
		--自动保存
		--use 'Pocco81/auto-save.nvim'
		--code_runner
		use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
		--tree
    	use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    		}

		-- bufferline
		use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

		-- install without yarn or npm
		--use({
    	--	"iamcco/markdown-preview.nvim",
    	--	run = function() vim.fn["mkdp#util#install"]() end,	
		--})
		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

		-- treesitter
		use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
		-- lualine
		use {
  			'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
			}
		use 'makerj/vim-pdf'

--		use {'glepnir/dashboard-nvim'}

		use {
		  'glepnir/dashboard-nvim',
    }

end)
