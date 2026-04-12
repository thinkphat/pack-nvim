local loader = require("utils")

loader.event("VimEnter", "which-key",
  "https://github.com/folke/which-key.nvim",
  function()
    require("which-key").setup({})
  end
)
