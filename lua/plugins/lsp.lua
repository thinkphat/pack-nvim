local loader = require("utils")

loader.event("BufReadPre", "lsp",
  "https://github.com/neovim/nvim-lspconfig",
  function()
  end
)

