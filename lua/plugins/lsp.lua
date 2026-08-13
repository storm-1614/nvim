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
                    -- 保持 ruff 作为 LSP formatter。但它不提供符号文档。
                    -- 关掉 noice 接管后,K 走原生 vim.lsp.buf.hover,会尊重
                    -- 这里的 handler:丢弃 ruff 的响应,避免空文档浮窗。
                    handlers = {
                        ["textDocument/hover"] = function(_, _, _)
                            return nil
                        end,
                    },
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
            -- 关掉 noice 对 hover 的接管,让 K 回到原生 vim.lsp.buf.hover。
            -- 否则 noice 会自己向每个 client 发 hover,绕过 ruff 的能力屏蔽,
            -- 导致 ruff 返回空文档时弹 "No information available" 空窗。
            -- 原生 hover 会尊重下面 servers.ruff 的 handlers 屏蔽。
            lsp = {
                hover = {
                    enabled = false,
                },
            },
            presets = {
                lsp_doc_border = true,
            },
        },
    },
}
