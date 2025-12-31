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
            },
        },
    },
    {
        "folke/noice.nvim",
        opts = {
            presets = {
                lsp_doc_border = true,
            },
        },
    },
}
