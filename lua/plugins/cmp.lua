local loader = require("utils")

loader.event("InsertEnter", "cmp",
  "https://github.com/hrsh7th/nvim-cmp",
  function()
    require("cmp").setup({})
  end
)
