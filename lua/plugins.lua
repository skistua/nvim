
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

local cmd = vim.cmd

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'vim-airline/vim-airline'
  use 'morhetz/gruvbox'
  use 'ryanoasis/vim-devicons'

  -- Navigation
  use 'easymotion/vim-easymotion'
  use 'mhinz/vim-startify'
  use {'preservim/nerdtree', config = function() require('plugin_settings.nerdtree') end}

  -- Life Saver
  use 'preservim/nerdcommenter'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  if vim.fn.has('win32') == 1 then
    use {'Neur1n/neuims', opt = true, cmd = 'IMSToggle'}
  end

  -- Git
  use 'mhinz/vim-signify'

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
