local o = vim.o
local fn = vim.fn

-- completion menu
o.completeopt = 'menuone,noinsert,noselect'
o.pumheight = 15

-- compe setup
require 'compe'.setup {
	enabled = true,
	documentation = true,
	autocomplete = true,
	max_abbr_width = 100,
	max_kind_width = 100,
	max_menu_width = 100,
	source = {
		buffer = true,
		calc = true,
		nvim_lsp = true,
		path = true
	}
}

local t = require 'termcodes'
local luasnip = require 'luasnip'

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if fn.pumvisible() == 1 then
        return t '<c-n>'
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t '<plug>luasnip-expand-or-jump'
    elseif check_back_space() then
        return t '<tab>'
    else
        return fn['compe#complete']()
    end
end

_G.s_tab_complete = function()
    if fn.pumvisible() == 1 then
        return t '<c-p>'
    elseif luasnip and luasnip.jumpable(-1) then
        return t '<plug>luasnip-jump-prev'
    else
        return t '<s-Tab>'
    end
end
