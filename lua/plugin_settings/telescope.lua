
local actions = require('telescope.actions')

require('telescope').setup({
    defaults = {
        layout_strategy = 'vertical',
        layout_config = { height = 0.95 },
        path_display = function(opts, path)
            local tail = require("telescope.utils").path_tail(path)
            return string.format("%s (%s)", tail, path)
        end,
        file_ignore_patterns = {"%.meta","%.asset","%.unity","%.mat","%.prefab"},
        mappings = {
            n = {
                    ['<c-d>'] = require('telescope.actions').delete_buffer
                },
            i = {
                    ['<C-h>'] = "which_key",
                    ["<c-d>"] = actions.delete_buffer + actions.move_to_top,
                    ['esc'] = actions.close
            }
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--trim" -- add this value
        }
    },
    --pickers = {
        --find_files = {
            --find_command = { "fd", "-t", "f"}
        --}
    --}
})

local map = vim.keymap.set
local builtin = require('telescope.builtin')
local option = { noremap = true, silent = true }

map('n', '<leader>f', builtin.find_files, option)
map('n', '<leader>g', builtin.live_grep, option)
map('n', '<leader>b', builtin.buffers, option)
map('n', '<leader><leader>h', builtin.help_tags, option)
map('n', '<C-p>', builtin.commands, option)
map('n', '<M-r>', builtin.registers, option)
map('n', 'gu', builtin.lsp_references, option)
map('n', '<leader>r', builtin.lsp_document_symbols, option)
map('n', '<leader>R', builtin.treesitter, option)
map('n', '<leader>e', builtin.diagnostics, option)
map('n', 'gi', builtin.lsp_implementations, option)
map('n', 'gd', builtin.lsp_definitions, option)
map('n', 'gD', builtin.lsp_type_definitions, option)
