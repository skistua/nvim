
syntax enable
set nowrap
set number 
set relativenumber
set splitbelow
set splitright
set undofile
set undolevels=3000
set noshowmode
set incsearch
set wildmenu
let mapleader="\<space>"

set updatetime=300
set timeoutlen=200

" Indent
set expandtab
set tabstop=4
set shiftwidth=4
set cinkeys-=:

" Enable the mouse
set mouse=a

"set autochdir
set clipboard=unnamedplus

" all utf-8
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

syntax on
filetype indent plugin on 
filetype plugin on

set updatetime=1000
set completeopt=longest,menuone,preview
  " Set desired preview window height for viewing documentation.
set previewheight=5
set termguicolors

let g:python3_host_prog = '~/.config/nvimvenv/Scripts/python.exe'

if has('win32')
    let &shell = 'powershell'
    let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
    let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    set shellquote= shellxquote=
endif
