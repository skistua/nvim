
set t_Co=256

" Set background transparent
"highlight Normal ctermbg=NONE guibg=NONE
autocmd vimenter * highlight Normal guibg=NONE ctermbg=NONE
let g:gruvbox_transparent_bg=1
let g:airline_theme='gruvbox'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme gruvbox
