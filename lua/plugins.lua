
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
    'kdheepak/tabline.nvim',
    config = function() require('plugin_settings.tabline') end,
    requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
  }

  -- Navigation
  use 'easymotion/vim-easymotion'
  use 'mhinz/vim-startify'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('plugin_settings.nvimtree') end
  }

  -- Life Saver
  use 'preservim/nerdcommenter'
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }  
  use 'tpope/vim-surround'

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
--

-- TreeSitter

  if packer_bootstrap then
    require('packer').sync()
  end
end)
