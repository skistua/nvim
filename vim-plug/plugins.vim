call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
"Plug 'liuchengxu/vim-which-key'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'dense-analysis/ale'
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ferrine/md-img-paste.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer' "cmp buffer source
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip' " Snippets plugin
Plug 'ray-x/lsp_signature.nvim' " lsp signature helper
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'romgrk/nvim-treesitter-context'
if has('macunix')
    Plug 'lyokha/vim-xkbswitch'
else
    Plug 'Neur1n/neuims', {'on': 'IMSToggle'}
endif
call plug#end()


if has('win32')
    source ~/AppData/local/nvim/themes/gruvbox.vim
    source ~/AppData/local/nvim/themes/airline.vim
    "source ~/AppData/local/nvim/keys/which-key.vim
    source ~/AppData/local/nvim/plug-config/start-screen.vim
    "source ~/AppData/local/nvim/plug-config/coc.vim
    "source ~/AppData/local/nvim/plug-config/omnisharp.vim
    "source ~/AppData/local/nvim/plug-config/leaderf.vim
    source ~/AppData/local/nvim/plug-config/nerdtree.vim
    source ~/AppData/local/nvim/plug-config/markdown.vim
    source ~/AppData/local/nvim/plug-config/ims.vim
    source ~/AppData/local/nvim/plug-config/telescope.vim
    lua require('lsp')
else
    source ~/.config/nvim/themes/gruvbox.vim
    source ~/.config/nvim/themes/airline.vim
    "source ~/.config/nvim/keys/which-key.vim
    source ~/.config/nvim/plug-config/start-screen.vim
    "source ~/.config/nvim/plug-config/coc.vim
    "source ~/.config/nvim/plug-config/omnisharp.vim
    "source ~/.config/nvim/plug-config/leaderf.vim
    source ~/.config/nvim/plug-config/nerdtree.vim
    source ~/.config/nvim/plug-config/markdown.vim
    source ~/.config/nvim/plug-config/ims.vim
    source ~/.config/nvim/plug-config/telescope.vim
    lua require('lsp')
endif
