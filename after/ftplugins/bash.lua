local lsp = vim.lsp
local cfg = require("utils")

lsp.config("bashls", {
  capabilities = cfg.capabilities(),
  on_attach = cfg.on_attach,
})

lsp.enable("bashls")
