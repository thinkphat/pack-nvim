local ok_tel,telescope = pcall(require,"telescope")
local actions = require("telescope.actions")
if ok_tel then
  telescope.setup({
    defaults = {
      mappings = { i = { ["<C-u>"]=false,["<C-d>"]=false } }
    },
    pickers = {
      buffers = {
        sort_lastused = true,
        initial_mode = "normal",
        mappings = {
          i = { ["<c-d>"] = actions.delete_buffer },
          n = { ["<c-d>"] = actions.delete_buffer },
        },
      },
    },
    extensions = {
      fzf = {
        fuzzy=true,
        override_generic_sorter=true,
        override_file_sorter=true,
        case_mode="smart_case"
      }
    }
  })

  pcall(telescope.load_extension,"fzf")

  local map = vim.keymap.set
  local builtin = require("telescope.builtin")

  map('n', '<leader>ff', builtin.find_files, {desc = 'Find Files'})
  map('n', '<leader>fb', builtin.buffers, {desc = 'Find Buffers'})
  map('n', '<leader>fr', builtin.resume, {desc ='Resume Find'})
  map('n', '<leader>fs', builtin.lsp_document_symbols, {desc='Find Symbols'})
  map('n', '<leader>fS', builtin.lsp_workspace_symbols, {desc='Find Workspace Symbols'})
  map("n", "<leader>f.", builtin.oldfiles, { desc = "Recent Files" })

  map('n', '<leader>ss', builtin.live_grep, {desc = 'Search Project'})
  map('n', '<leader>sw', builtin.grep_string, {desc = 'Search Word'})
  map('n', '<leader>sb', builtin.current_buffer_fuzzy_find, {desc = 'Search Buffer'})
  map('n', '<leader>sd', builtin.diagnostics, {desc = 'Search Diagnostics'})
  map("n", "<leader>sh", builtin.help_tags, { desc = "Show Help Tags" })
  map("n", "<leader>sk", builtin.keymaps, { desc = "List Keymaps" })
  map("n", "<leader>sp", builtin.builtin, { desc = "List Pickers" })
  map("n", "<leader>sg", builtin.live_grep, { desc = "Live Grep Search" })
end
