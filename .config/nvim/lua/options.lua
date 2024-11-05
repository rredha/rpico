-- basic neovim setup
--

-- leader : space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- clipboard using xclip
vim.o.clipboard = 'unnamedplus'

-- numbers and relative numbers
vim.o.number = true
vim.o.relativenumber = true

-- sign column
vim.o.signcolumn = 'yes'

-- tab spaces configuration
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- update time
vim.o.updatetime = 300

-- use terminal colors
vim.o.termguicolors = true

-- enable mouse
vim.o.mouse = 'a'
