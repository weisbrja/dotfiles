local g = vim.g
local fn = vim.fn

-- disable some built-in plugins
g.loaded_gzip = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1
g.loaded_2html_plugin = 1

-- disable some health checks
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_python_provider = 0
--g.loaded_python3_provider = 0

-- automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system { 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path }
end

-- plugins
local use = require 'packer'.use
require 'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'sheerun/vim-polyglot'
	use 'morhetz/gruvbox'
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'hrsh7th/nvim-compe'
	use 'l3mon4d3/luasnip'
	use 'norcalli/nvim-colorizer.lua'
end)

-- colorizer plugin
require 'colorizer'.setup {}
