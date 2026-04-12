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

return M
