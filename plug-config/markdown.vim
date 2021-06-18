autocmd FileType markdown nmap <buffer><silent> <leader>ip :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'
let g:mkdp_refresh_slow = 1
