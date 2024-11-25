-- neovim-basic
-- sane default options i cant live without...


-- general settings
-- update time
vim.o.updatetime = 100 -- faster completion
--vim.o.updatetime = 300
vim.g.swapfile = false -- Disable the swap file
vim.g.undofile = true -- Automatically save and restore undo history

-- numbers and relative numbers
vim.o.number = true
vim.o.relativenumber = true

-- tab spaces configuration
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- mouse
vim.o.mouse = 'a'
vim.o.mousemodel = "extend" -- right-click extend the current selection

-- clipboard
vim.o.clipboard = 'unnamedplus'

-- windows and appearence
vim.g.scrolloff = 8 -- Number of screen lines to show around the cursor
vim.g.splitbelow = true -- A new window is put below the current one
vim.g.splitright = true -- A new window is put right of the current one
vim.g.cursorline = true -- Highlight the screen line of the cursor
vim.g.cursorcolumn = false -- Highlight the screen column of the cursor
vim.g.signcolumn = "yes" -- Whether to show the signcolumn
vim.g.colorcolumn = "100" -- Columns to highlight
vim.o.termguicolors = true
vim.g.spell = false -- Highlight spelling mistakes (local to window)
vim.g.wrap = false -- Prevent text from wrapping

-- search
vim.g.incsearch = true -- Incremental search: show match for partly typed search command
vim.g.inccommand = "split" -- Search and replace: preview changes in quickfix list
vim.g.ignorecase = true -- When the search query is lower-case, match both lower and upper-case

--   patterns
vim.g.smartcase = true -- Override the 'ignorecase' option if the search pattern contains upper
vim.g.fileencoding = "utf-8" -- File-content encoding for the current buffer
