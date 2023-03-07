"let g:coc_global_extensions=[ 'coc-omnisharp', 'coc-json', 'coc-sql', 'coc-eslint', 'coc-html', 'coc-db' ]
let g:coc_global_extensions=[ 'coc-json', 'coc-sql', 'coc-eslint', 'coc-html', 'coc-db' ]
" Give more space for displaying messages.
set cmdheight=2

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


"You have to remap <cr> to make it confirm completion.
"inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"To make <cr> select the first completion item and confirm the completion when no item has been selected:
"Note: \<C-g>u is used to break undo level.
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"To make coc.nvim format your code on <cr>:
"inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" ===========================================  
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Formatting selected code.
nnoremap <silent> gf :call CocActionAsync('format')<CR>

" Apply AutoFix to problem on the current line.
nnoremap <silent> ga :call CocActionAsync('doQuickfix')<CR>

" Rename current symbol.
nnoremap <silent> gr :call CocActionAsync('rename')<CR>

" Jump Definiation.
nnoremap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> g\ :call CocActionAsync('showSignatureHelp')<CR>
nnoremap <silent> gi :call CocActionAsync('jumpImplementation')<CR>
nnoremap <silent> gu :call CocActionAsync('jumpReferences')<CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
