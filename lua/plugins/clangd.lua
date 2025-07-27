return {
    -- 增强 clangd 功能
    {
        "p00f/clangd_extensions.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        config = function()
            -- 确保 Mason 已经设置好
            require("mason").setup()
            require("mason-lspconfig").setup()

            -- 获取默认能力
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
            -- 配置 clangd 扩展
            require("clangd_extensions").setup({
                server = {
                    capabilities = capabilities,
                    cmd = {
                        "clangd",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=iwyu",
                        "--completion-style=detailed",
                        "--query-driver=/usr/bin/g++",
                        "--all-scopes-completion",
                        "--cross-file-rename",
                    },
                    filetypes = { "c", "cpp", "objc", "objcpp" },
                },
                extensions = {
                    autoSetHints = true,
                    inlay_hints = {
                        only_current_line = false,
                        show_parameter_hints = true,
                        parameter_hints_prefix = "<- ",
                        other_hints_prefix = "=> ",
                    },
                },
            })

            -- 确保 clangd 通过 Mason 安装
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    if server_name == "clangd" then
                        -- 已经通过 clangd_extensions 配置
                        return
                    end
                    require("lspconfig")[server_name].setup({})
                end,
            })
            require("lspconfig").clangd.setup({
                cmd = { "clangd", "--compile-commands-dir=build" },
                settings = {
                    clangd = {
                        format = {
                            style = "file", -- 确保 clangd 使用 `.clang-format` 文件中的配置
                        },
                    },
                },
            })
        end,
    },
}
