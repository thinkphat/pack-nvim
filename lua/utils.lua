local M = {}
local loaded = {}

function M.load(name, url, setup)
  if loaded[name] then return end
  loaded[name] = true

  vim.pack.add({ url })
  if setup then setup() end
end

function M.event(ev, name, url, setup)
  vim.api.nvim_create_autocmd(ev, {
    once = true,
    callback = function()
      M.load(name, url, setup)
    end
  })
end

function M.key(lhs, name, url, setup, action)
  vim.keymap.set("n", lhs, function()
    M.load(name, url, setup)
    if action then action() end
  end)
end

function M.cmd(cmd, name, url, setup, action)
  vim.api.nvim_create_user_command(cmd, function()
    M.load(name, url, setup)
    if action then action() end
  end, {})
end

function M.capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
  if ok then
    capabilities = cmp_lsp.default_capabilities(capabilities)
  end

  return capabilities
end

function M.on_attach(_, bufnr)
  local map = function(mode, key, func)
    vim.keymap.set(mode, key, func, { buffer = bufnr })
  end

  map("n", "K", vim.lsp.buf.hover)
  map("n", "gd", vim.lsp.buf.definition)
  map("n", "gD", vim.lsp.buf.declaration)
  map("n", "gi", vim.lsp.buf.implementation)
  map("n", "gr", vim.lsp.buf.references)
  map("n", "<leader>rn", vim.lsp.buf.rename)
  map("n", "<leader>ca", vim.lsp.buf.code_action)
end
return M
