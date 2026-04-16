vim.pack.add({ 
	"https://github.com/echasnovski/mini.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/folke/neodev.nvim",
  "https://github.com/hrsh7th/nvim-cmp",
  "https://github.com/neovim/nvim-lspconfig",
})
require("plugins.oil")
require("plugins.telescope")
require("plugins.mini")
-- require("plugins.which-key")
require("plugins.gitsigns")
-- require("plugins.cmp")
-- require("plugins.lsp")
