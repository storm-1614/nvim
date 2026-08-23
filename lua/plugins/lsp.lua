return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            diagnostics = {
                float = {
                    border = "rounded",
                },
            },
            servers = {
                ruff = {
                    init_options = {
                        settings = {
                            lint = {
                                enable = false,
                            },
                        },
                    },
                },
                -- phpactor:系统 php.ini 中 iconv 默认被注释导致 phpactor
                -- 无法启动,这里用自建 launcher 注入 iconv(见 .php-lsp/launcher)
                -- root_dir 兜底:无 .git/composer.json 等标记的目录(如教学/CTF 目录)
                -- 也退回文件所在目录,确保 php LSP 始终 attach、补全可用
                phpactor = {
                    cmd = {
                        "/home/storm/.config/nvim/.php-lsp/launcher/phpactor-lsp",
                        "language-server",
                    },
                    -- 0.12 的 root_dir 是异步回调签名 function(bufnr, on_dir):
                    -- 通过 on_dir() 传递项目根,nvim 才据此启动 LSP。
                    -- 无 .git/composer.json 等标记的目录(如教学/CTF 目录)退回
                    -- 文件所在目录,确保 php LSP 始终 attach、补全可用。
                    root_dir = function(bufnr, on_dir)
                        local file = vim.api.nvim_buf_get_name(bufnr or 0)
                        local util = require("lspconfig.util")
                        local root = util.root_pattern(
                            ".git",
                            "composer.json",
                            ".phpactor.json",
                            ".phpactor.yml"
                        )(file) or vim.fn.fnamemodify(file, ":h")
                        on_dir(root)
                    end,
                },
            },
        },
    },
    {
        -- 清空 php 的 lint(LazyVim php extras 默认接入了 phpcs,
        -- 其 PSR 风格检查对 CTF/教学代码是多余噪音)。phpactor 的
        -- LSP 诊断不受影响,仍保留。
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                php = vim.empty_dict(),
            },
        },
    },
    {
        "folke/noice.nvim",
        opts = {
            -- 阻断 ruff 空 hover 通知:
            -- noice 默认接管 hover(vim.lsp.buf.hover = noice.lsp.hover),
            -- 它自己向每个 client 发请求,ruff 返回空结果时在
            -- noice/lua/noice/lsp/hover.lua 弹 vim.notify("No information
            -- available")。silent=true 让空结果静默,只保留有内容的
            -- basedpyright 浮窗。
            lsp = {
                hover = {
                    silent = true,
                },
            },
            presets = {
                lsp_doc_border = true,
            },
        },
    },
}
