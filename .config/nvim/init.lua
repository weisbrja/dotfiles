require 'settings'
require 'plugins'
require 'colorscheme'
require 'lsp'
require 'completions'
require 'mappings'
require 'spelling'

-- autocommands
vim.cmd 'autocmd BufWritePost Xresources !xrdb %'
