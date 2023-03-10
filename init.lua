
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('options')
require('commonkeymap')
require('plugins')
require('theme')
require('lsp')
require('autocompletion')
require('treesitter')
