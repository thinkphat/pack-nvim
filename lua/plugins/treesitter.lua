local loader = require("utils")

loader.event("BufReadPost", "treesitter",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true }
    })
  end
)
