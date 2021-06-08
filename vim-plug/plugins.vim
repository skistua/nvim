call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'liuchengxu/vim-which-key'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'tpope/vim-surround'
call plug#end()


if has('win32')
	source ~/AppData/local/nvim/themes/gruvbox.vim
	source ~/AppData/local/nvim/themes/airline.vim
	source ~/AppData/local/nvim/keys/which-key.vim
	source ~/AppData/local/nvim/plug-config/start-screen.vim
	source ~/AppData/local/nvim/plug-config/coc.vim
	source ~/AppData/local/nvim/plug-config/omnisharp.vim
	source ~/AppData/local/nvim/plug-config/leaderf.vim
	source ~/AppData/local/nvim/plug-config/nerdtree.vim
else
	source ~/.config/nvim/themes/gruvbox.vim
	source ~/.config/nvim/themes/airline.vim
	source ~/.config/nvim/keys/which-key.vim
	source ~/.config/nvim/plug-config/start-screen.vim
	source ~/.config/nvim/plug-config/coc.vim
	source ~/.config/nvim/plug-config/omnisharp.vim
	source ~/.config/nvim/plug-config/leaderf.vim
	source ~/.config/nvim/plug-config/nerdtree.vim
endif
