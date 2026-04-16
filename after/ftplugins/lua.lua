local lsp = vim.lsp
local cfg = require("utils")

lsp.config("lua_ls", {
  capabilities = cfg.capabilities(),
  on_attach = cfg.on_attach,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

lsp.enable("lua_ls")

pcall(function()
  require("neodev").setup({})
end)
