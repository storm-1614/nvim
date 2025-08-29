return {
    "saghen/blink.cmp",
    opts = {
        keymap = {
            preset = "enter",
            ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
            ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
            ["<A-d>"] = { "snippet_forward" },
            ["<A-s>"] = { "snippet_backward" },
            --        Super Tab
            --            ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<C-h>"] = {
                function(cmp)
                    cmp.show({ providers = { "snippets" } })
                end,
            },
            ["<C-e>"] = { "hide", "fallback" },

            --                              ["<Tab>"] = {
            --                                  function(cmp)
            --                                      if cmp.snippet_active() then
            --                                          return cmp.accept()
            --                                      else
            --                                          return cmp.select_and_accept()
            --                                      end
            --                                  end,
            --                                  "snippet_forward",
            --                                  "fallback",
            --                              },
            --                              ["<S-Tab>"] = { "snippet_backward", "fallback" },

            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
            ["<C-n>"] = { "select_next", "fallback_to_mappings" },

            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },

            ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
        },
        completion = {
            list = {
                selection = {
                    preselect = false,
                    auto_insert = true,
                },
            },

            documentation = {
                window = {
                    border = "rounded",
                    winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
                },
            },
        },
    },
}
