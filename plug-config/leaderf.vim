let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', '*.meta', '*.fbx', '*.csproj', '*.sln']
            \}


let g:Lf_PreviewResult = {
            \ 'File': 1,
            \ 'Buffer': 0,
            \ 'Mru': 0,
            \ 'Tag': 0,
            \ 'BufTag': 1,
            \ 'Function': 1,
            \ 'Line': 0,
            \ 'Colorscheme': 0,
            \ 'Rg': 0,
            \ 'Gtags': 0
            \}

let g:Lf_RootMarkers = ['.project', '.project2', '.root']

"nnoremap <leader>r :LeaderfFunction<CR>
"nnoremap <leader>R :LeaderfFunctionAll<CR>

