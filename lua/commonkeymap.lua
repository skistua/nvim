
local map = vim.api.nvim_set_keymap
local option = { noremap = true, silent = true }

map('n', 'H', '^', option)
map('n', 'L', '$', option)

map('n', '<leader>y', '"*y', option)
map('n', '<leader>Y', '"*Y', option)
map('n', '<leader>p', '"*p', option)
map('n', '<leader>P', '"*P', option)

-- Redraw the screen and clear any search terms
map('n', '<C-n>', ':nohls<cr><c-l>', option)

-- Better window navigation
map('n', '<C-h>', '<C-w>h', option)
map('n', '<C-j>', '<C-w>j', option)
map('n', '<C-k>', '<C-w>k', option)
map('n', '<C-l>', '<C-w>l', option)

-- Use alt + hjkl to resize windows
map('n', '<M-j>', ':resize -2<CR>', option)
map('n', '<M-k>', ':resize +2<CR>', option)
map('n', '<M-h>', ':vertical resize +2<CR>', option)
map('n', '<M-l>', ':vertical resize -2<CR>', option)

-- Buffer Navigation
map('n', '<leader>l', ':bnext<CR>', option) 
map('n', '<leader>h', ':bNext<CR>', option) 
map('n', '<leader>c', ':bd<CR>', option) 
