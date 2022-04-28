local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
  use({"wbthomason/packer.nvim", opt = true})

  use "EdenEast/nightfox.nvim"

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function() require'nvim-tree'.setup {
      disable_netrw       = true,
      hijack_netrw        = true,

    } end
  }

  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'simrat39/symbols-outline.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "nvim-telescope/telescope-file-browser.nvim" }

  use 'mfussenegger/nvim-dap'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
