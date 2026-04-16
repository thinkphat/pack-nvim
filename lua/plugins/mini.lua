pcall(function()
  local clue = require("mini.clue")

  clue.setup({
    triggers = {
      { mode = "n", keys = "<leader>" },
    },

    clues = {
      -- 🔥 GROUPS (quan trọng nhất)
      { mode = "n", keys = "<leader>f", desc = "+find" },
      { mode = "n", keys = "<leader>s", desc = "+search" },

      -- 🔍 FIND (telescope)
      { mode = "n", keys = "<leader>ff", desc = "find files" },
      { mode = "n", keys = "<leader>fb", desc = "buffers" },
      { mode = "n", keys = "<leader>fr", desc = "resume" },
      { mode = "n", keys = "<leader>fs", desc = "document symbols" },
      { mode = "n", keys = "<leader>fS", desc = "workspace symbols" },
      { mode = "n", keys = "<leader>f.", desc = "recent files" },
      { mode = "n", keys = "<leader>fa", desc = "find all files" },

      -- 🔎 SEARCH
      { mode = "n", keys = "<leader>ss", desc = "live grep" },
      { mode = "n", keys = "<leader>sw", desc = "search word" },
      { mode = "n", keys = "<leader>sb", desc = "search buffer" },
      { mode = "n", keys = "<leader>sd", desc = "diagnostics" },
      { mode = "n", keys = "<leader>sh", desc = "help tags" },
      { mode = "n", keys = "<leader>sk", desc = "keymaps" },
      { mode = "n", keys = "<leader>sp", desc = "pickers" },
    },
  })
end)
