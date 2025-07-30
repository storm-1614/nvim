return {
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
            vim.cmd([[
            function OpenMarkdownPreview (url)
                execute "silent ! firefox --new-window " . a:url
            endfunction
            let g:mkdp_browserfunc = 'OpenMarkdownPreview'
        ]])
        end,

        ft = { "markdown" },
    },
    { --任务列表切换
        "tenxsoydev/vim-markdown-checkswitch",
        config = function()
            vim.g.md_checkswitch_style = "cycle"
        end,
    },

    { --表格
        "dhruvasagar/vim-table-mode",
        config = function()
            vim.cmd(
                [[
        augroup markdown_config
          autocmd!
          autocmd FileType markdown nnoremap <buffer> <M-s> :TableModeRealign<CR>
        augroup END
      ]],
                false
            )
            vim.g.table_mode_sort_map = "<leader>mts"
        end,
    },
    { --列表
        "bullets-vim/bullets.vim",
        config = function()
            vim.g.bullets_enabled_file_types = { "markdown", "text", "gitcommit", "scratch" }
        end,
    },
}
