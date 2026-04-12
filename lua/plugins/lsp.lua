local loader = require("utils")

loader.event("BufReadPre", "lsp",
  "https://github.com/neovim/nvim-lspconfig",
  function()
    require("lspconfig").lua_ls.setup({})
  end
)
