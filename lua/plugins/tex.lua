return {
  {
    "lervag/vimtex",
    lazy = false, -- 不进行懒加载，以保证在打开 tex 文件时立即加载
    config = function()
      vim.g.vimtex_view_method = "zathura_simple" -- Linux 下使用 Zathura 查看器
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_automatic = 1
      
      -- 设置 latexmk 的编译参数
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "",
        callback = 1,
        continuous = 0,
        executable = "latexmk",
        hooks = {},
        options = {
          "-verbose",
          "-pdf",
          "-xelatex",
          "-synctex=1",
          "-file-line-error",
          "-shell-escape", -- 允许运行外部命令 (如 minted 宏包需要)
          "-halt-on-error",
          "-interaction=nonstopmode",
          "-silent",
        },
      }
    end
  }
}

