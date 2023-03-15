

require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = {
        enable = true ,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
}

--floding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- no folding default
vim.wo.foldlevel = 99

