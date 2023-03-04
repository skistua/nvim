-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    filters = {
        dotfiles = true
    }
})

--key binding
vim.api.nvim_set_keymap('n','nt',':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n','NT',':NvimTreeFocus<CR>', {noremap = true, silent = true})
