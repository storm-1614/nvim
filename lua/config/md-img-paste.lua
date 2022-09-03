vim.cmd[[
let g:mdip_imgdir = 'img' 
let g:mdip_imgname = 'image'
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i
]]
