return require('packer').startup(function()
    	use 'wbthomason/packer.nvim'
		--theme
		use 'shaunsingh/nord.nvim'
		--coc
		use 'neoclide/coc.nvim'
		--fzf
		use 'vijaymarupudi/nvim-fzf'
		--tree
    	use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    		}

		-- bufferline
		use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

		-- install without yarn or npm
		use({
    		"iamcco/markdown-preview.nvim",
    		run = function() vim.fn["mkdp#util#install"]() end,	
		})
		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

		-- treesitter
		use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
		-- lualine
		use {
  			'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
			}
		--use {'glepnir/dashboard-nvim'}

end)
