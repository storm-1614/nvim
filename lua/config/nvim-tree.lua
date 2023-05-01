

-- OR setup with some options
require("nvim-tree").setup({
  on_attach = on_attach,
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

