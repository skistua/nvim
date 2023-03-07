
vim.cmd('syntax enable')

local o = vim.o
local g = vim.g
local opt = vim.opt

o.wrap = false
o.swapfile = false
o.number = true
o.relativenumber = true
o.splitbelow = true
o.splitright = true
o.showmode = false
o.incsearch = true
o.wildmenu = true
g.mapleader = ' '

o.updatetime = 1000
o.timeoutlen = 200
o.completeopt = 'longest,menuone,preview'

-- Indent
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

-- Enable the mouse
o.mouse = 'a'

-- set autochdir
opt.clipboard = 'unnamedplus'

-- all utf-8
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.termencoding = 'utf-8'

vim.cmd [[
syntax on
filetype indent plugin on 
filetype plugin on
]]

-- Set desired preview window height for viewing documentation.
opt.previewheight=5
opt.termguicolors = true

if vim.fn.has('win32') == 1 then
    g.python3_host_prog = '~/.config/nvimvenv/Scripts/python.exe'
else
    g.python3_host_prog = '~/.config/nvimvenv/bin/python'
end

