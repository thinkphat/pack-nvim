--- Leader keys
vim.g.mapleader = " " 
vim.g.maplocalleader = ","

-- User Interface settings
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.scrolloff = 5         -- Minimum number of screen lines to keep above and below the cursor
vim.opt.cursorline = true     -- Highlight the current line
vim.opt.cursorcolumn = true   -- Highlight the current column
vim.opt.wrap = false          -- Disable line wrapping
vim.opt.showmode = false      -- Do not show mode in the command line
vim.opt.signcolumn = "yes"    -- Always show sign column

-- Indentation settings
vim.opt.shiftwidth = 2     -- Number of spaces for each step of (auto)indent
vim.opt.tabstop = 2        -- Number of spaces that a <Tab> counts for
vim.opt.softtabstop = 2    -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.smartindent = true -- Smart autoindenting when starting a new line
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.autoindent = true  -- Copy indent from current line when starting a new line
vim.opt.breakindent = true -- Wrap indent to match line start

-- Clipboard settings
vim.opt.clipboard = "unnamedplus"

-- Search settings
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true  -- Override ignorecase if search pattern contains upper case characters
vim.opt.hlsearch = true   -- Highlight all matches of search pattern

-- Performance settings
vim.opt.updatetime = 250 -- Faster completion (default is 4000 ms)
vim.opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete
vim.opt.swapfile = false
vim.opt.undofile = true  -- Keep undo even when write quit
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.inccommand = "nosplit"

-- Window splitting
vim.opt.splitright = true -- Vertical splits will automatically be to the right
vim.opt.splitbelow = true -- Horizontal splits will automatically be below
