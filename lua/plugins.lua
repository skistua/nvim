
-- Ensure paker installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons'},
    config = function() require('plugin_settings.lualine') end
  }
  use {
      'xiyaowong/nvim-transparent',
      config = function()
          require("transparent").setup()
      end
  }

  use {
    'kdheepak/tabline.nvim',
    config = function() require('plugin_settings.tabline') end,
    requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
  }

  -- Navigation
  use 'easymotion/vim-easymotion'
  use {
    'mhinz/vim-startify',
    config = function()
        vim.g.startify_change_to_dir = 0
    end
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('plugin_settings.nvimtree') end
  }
  use { 'simrat39/symbols-outline.nvim',
    config = function() require('symbols-outline').setup() end
  }

  -- Life Saver
  use 'preservim/nerdcommenter'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'tpope/vim-surround'
  use { 'lukas-reineke/indent-blankline.nvim',
    config = function()
        require('plugin_settings.blankline')
    end
  }

  if vim.fn.has('win32') == 1 then
    use {'Neur1n/neuims', opt = true, cmd = 'IMSToggle'}
  end

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Markdown
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'ferrine/md-img-paste.vim'

-- LSP
 use {
   "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",
   "neovim/nvim-lspconfig",
   "Hoffs/omnisharp-extended-lsp.nvim",
   "Decodetalkers/csharpls-extended-lsp.nvim"
 }

-- Autocompletion
 use {
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  "rafamadriz/friendly-snippets"
 }

-- TreeSitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end
  }

  use 'nvim-treesitter/nvim-treesitter-context'

-- Fuzzy Find
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require('plugin_settings.telescope') end
  }

-- terminal
  use {"numToStr/FTerm.nvim",
    config = function() require('plugin_settings.FTerm') end
  }

  use {
      'Exafunction/codeium.vim',
      config = function ()
          vim.g.codeium_disable_bindings = 1
          -- Change '<C-g>' here to any keycode you like.
          vim.keymap.set('i', '<M-v>', function () return vim.fn['codeium#Accept']() end, { expr = true })
          vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
          vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
          vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
      end
}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
