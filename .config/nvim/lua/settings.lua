local api = vim.api
local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo

local t = require 'termcodes'

-- leader
api.nvim_set_keymap('', '<space>', '<nop>', { noremap = true, silent = true })
g.mapleader = t '<space>'
g.maplocalleader = t '<space>'

-- term gui colors
o.termguicolors = true

-- smart casing
o.ignorecase = true
o.smartcase = true

-- mouse
o.mouse = 'a'

-- global clipboard
o.clipboard = 'unnamedplus'

-- lazy redraw
o.lazyredraw = true

-- disable showing current mode
o.showmode = false

-- disable saving when switching buffers
o.hidden = true

-- disable introductory message
o.shortmess = 'I'

-- tabs
o.tabstop = 4
o.shiftwidth = 4
bo.tabstop = 4
bo.shiftwidth = 4

-- line breaks
o.linebreak = true
wo.linebreak = true

-- sign column
o.signcolumn = 'number'
wo.signcolumn = 'number'

-- line numbers
o.number = true
wo.number = true

-- title
o.title = true

-- highlight current line
o.cursorline = true
wo.cursorline = true
