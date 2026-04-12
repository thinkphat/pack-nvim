local loader = require("utils")

loader.key("-", "oil",
  "https://github.com/stevearc/oil.nvim",
  function()
    require("oil").setup({})
  end,
  function()
    require("oil").open()
  end
)
