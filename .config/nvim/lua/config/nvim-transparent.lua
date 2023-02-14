require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = {
    "NvimTreeNormal",
    "NvimTreeStatuslineNc",
  },
  exclude = {}, -- table: groups you don't want to clear
})
