call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ferrine/md-img-paste.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'romgrk/nvim-treesitter-context'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
if has('macunix')
    Plug 'lyokha/vim-xkbswitch'
else
    Plug 'Neur1n/neuims', {'on': 'IMSToggle'}
endif
call plug#end()


if has('win32')
    source ~/AppData/local/nvim/themes/gruvbox.vim
    source ~/AppData/local/nvim/themes/airline.vim
    source ~/AppData/local/nvim/plug-config/start-screen.vim
    source ~/AppData/local/nvim/plug-config/nerdtree.vim
    source ~/AppData/local/nvim/plug-config/markdown.vim
    source ~/AppData/local/nvim/plug-config/ims.vim
    source ~/AppData/local/nvim/plug-config/telescope.vim
    source ~/AppData/local/nvim/plug-config/coc.vim
    lua require('TS-setting')
else
    source ~/.config/nvim/themes/gruvbox.vim
    source ~/.config/nvim/themes/airline.vim
    source ~/.config/nvim/plug-config/start-screen.vim
    source ~/.config/nvim/plug-config/nerdtree.vim
    source ~/.config/nvim/plug-config/markdown.vim
    source ~/.config/nvim/plug-config/ims.vim
    source ~/.config/nvim/plug-config/telescope.vim
    source ~/.config/nvim/plug-config/coc.vim
    lua require('TS-setting')
endif
