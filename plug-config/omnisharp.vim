
" =============== OmniSharp settings start===============
" Use Roslyin and also better performance than HTTP
let g:OmniSharp_server_stdio = 1
let g:omnicomplete_fetch_full_documentation = 0
let g:OmniSharp_server_use_net6 = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 30

" this will make it so any subsequent C# files that you open are using the same solution and you aren't prompted again (so you better choose the right solution the first time around :) )
let g:OmniSharp_autoselect_existing_sln = 1

let g:OmniSharp_popup_options = {
\ 'winblend': 30,
\ 'winhl': 'Normal:Normal'
\}
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_selector_findmembers = 'fzf'

let g:OmniSharp_diagnostic_exclude_paths = [
\ 'obj\\',
\ '[Tt]emp\\',
\ '\.nuget\\',
\ '\<AssemblyInfo\.cs\>'
\]

let g:OmniSharp_popup_mappings = {
\ 'close': ['<Esc>', 'gq'],
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'lineDown': ['<C-e>', '<C-]>'],
\ 'lineUp': ['<C-y>', '<C-[>']
\}

let g:OmniSharp_popup_position = 'peek'

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}


augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> gu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> gi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>gd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>gi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> K <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> gs <Plug>(omnisharp_find_symbol)
  "autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  "autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> ga <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> ga <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  "autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  "autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>== <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>r <Plug>(omnisharp_find_members)

  autocmd FileType cs nmap <silent> <buffer> gr <Plug>(omnisharp_rename)

  "autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  "autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  "autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END
": =============== OmniSharp settings end=================

