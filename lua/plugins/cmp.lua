-- local loader = require("utils")
--
-- loader.event("InsertEnter", "cmp",
--   "https://github.com/hrsh7th/nvim-cmp",
--   function()
--     vim.pack.add({"https://github.com/hrsh7th/cmp-nvim-lsp",})
--     require("cmp").setup({
--       mapping = cmp.mapping.preset.insert({
--         ["<CR>"] = cmp.mapping.confirm({ select = true }),
--         ["<Tab>"] = cmp.mapping.select_next_item(),
--         ["<S-Tab>"] = cmp.mapping.select_prev_item(),
--       }),
--
--       sources = {
--         { name = "nvim_lsp" },
--         { name = "buffer" },
--         { name = "path" },
--       },
--     })
--   end
-- )
local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),

  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  },
})
