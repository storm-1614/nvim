## 个人neovim配置

👋嗨，这是我的neovim配置文件仓库，储存的是`~/.config/nvim`下的配置文件  
![](https://s3.bmp.ovh/imgs/2022/08/20/376f7afeda0801c8.png)

采用Packer管理插件**awa**  
coc.nvim需要到`~/.local/share/nvim/site/pack/packer/start/coc.nvim`下运行：
```
yarn install
```
所以需要`nodejs,yarn/npm`！  
更新使用`:PackerSync`  
coc需要自己去安装语言服务我使用的是：

```
CocInstall coc-sh coc-clangd coc-html coc-sumneko-lua coc-markdownlint coc-pyright
```

treesitter高亮也要自己下载语言：

```
TSInstall bash c cpp css html lua python yaml
```

还有很多需要改善的地方

### Markdown配置项
插入剪贴板图片:ctrl+p  
**建立目录**:
有如`：GenTocGFM`等方案，具体可以:Gen然后Tab可以查看具体  
更新：保存文件会自动更新  
预览：`:MarkdownPreview`  
### 插件列表

插件管理器：packer.nvim  
主题：nord.nvim  
lsp：coc.nvim  
文件查找：nvim-fzf  
文件树：nvim-tree.lua  
markdown阅读：markdown-preview.nvim  
代码高亮：nvim-treesitter  
状态栏：nvim-lualine  
颜色块显示：vim-css-color  
翻译：vim-translator  
中文帮助：vimcdoc  
markdown插入剪贴板图片:md-img-paste  
markdwon建立目录:vim-markdown-toc  

### TODO
 - [ ] ……
