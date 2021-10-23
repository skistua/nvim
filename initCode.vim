set number
set relativenumber
set incsearch
set wildmenu
set ic
let mapleader=" " 
map <space> <nop>
set t_vb=

set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
    
"inoremap jk <Esc>
noremap H ^
noremap L $
noremap <leader>j 4j
noremap <leader>k 4k

noremap <leader>y "*y
noremap <leader>Y "*Y
noremap <leader>p "*p
noremap <leader>P "*P


call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'OmniSharp/omnisharp-vim'
Plug 'tpope/vim-dispatch'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()
syntax on
filetype indent plugin on 

" omnisharp settings
let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_server_path = 'C:\Users\b166e\AppData\Local\omnisharp-vim\omnisharp-roslyn\OmniSharp.exe'
" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 30"
let g:OmniSharp_selector_ui = 'fzf'
"let g:OmniSharp_selector_findusages= 'fzf'
"let g:OmniSharp_popup_options = {
"\ 'winblend': 30,
"\ 'winhl': 'Normal:Normal'
"\}
