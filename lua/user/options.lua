local options = {
    cmdheight = 1,
    showmode = true, --右下角显示模式
    conceallevel = 0,
    termguicolors = true, --如果安装第三方主题，必须设置为true
    mouse = 'a', --允许鼠标
    fileencoding = 'utf-8', --utf8编码
    ignorecase = true, --查找时忽略大小写
    smartcase = true, --智能大小写
    smartindent = true, --智能锁进
    cindent = true,
    autoindent = true, --自动缩进
    tabstop = 4, --Tab宽度
    shiftwidth = 4, --每次Shift调整的缩进
    number = true, --行号
    relativenumber = true, --相对行号
    showtabline = 2,
    wrap = false, --不自动换行
    cursorline = true, --高亮当前行
    cursorcolumn = false, --不高亮当前列
    showcmd = true, --右下角显示命令
}
--这里只列举基础的配置，更多选项可以在Vim中:set all查询

--应用上面配置
vim.opt.shortmess:append 'c'
for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"

