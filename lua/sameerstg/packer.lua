-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ("wbthomason/packer.nvim")

  use ({
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })
   use {
          'VonHeikemen/lsp-zero.nvim',
              requires = {
                  -- LSP Support
                  {'neovim/nvim-lspconfig'},
                  {'williamboman/mason.nvim'},
                  {'williamboman/mason-lspconfig.nvim'},

                  -- Autocompletion
                  {'hrsh7th/nvim-cmp'},
                  {'hrsh7th/cmp-buffer'},
                  {'hrsh7th/cmp-path'},
                  {'saadparwaiz1/cmp_luasnip'},
                  {'hrsh7th/cmp-nvim-lsp'},
                  {'hrsh7th/cmp-nvim-lua'},

                  -- Snippets
                  {'L3MON4D3/LuaSnip'},
                  {'rafamadriz/friendly-snippets'},
              }
          }

  use ('vim-airline/vim-airline')

  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("folke/zen-mode.nvim")
  use ('ThePrimeagen/vim-be-good')
  use( 'tc50cal/vim-terminal' )
  use("laytan/cloak.nvim")
  use( 'preservim/nerdtree')
  use( 'tpope/vim-commentary')
  use( 'preservim/tagbar')
  use( 'terryma/vim-multiple-cursors')

  use("nvim-treesitter/nvim-treesitter-context");


end)

