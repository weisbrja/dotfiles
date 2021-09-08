local fn = vim.fn
local lsp = require 'lspconfig'

-- enable snippet support
local capabilities = vim.lsp.protocol.make_client_capabilities()
local completionItem = capabilities.textDocument.completion.completionItem
completionItem.snippetSupport = true
completionItem.resolveSupport = {
	properties = {
		'documentation',
		'detail',
		'additionalTextEdits',
	}
}

-- lua
lsp.sumneko_lua.setup {
	cmd = {'lua-language-server'},
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT'
			},
			diagnostics = {
				globals = {'vim'}
			},
			workspace = {
				library = {
					[fn.expand('$VIMRUNTIME/lua')] = true,
					[fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
				}
			},
			telemetry = {
				enable = false
			}
		}
	}
}

-- html
lsp.html.setup {
	cmd = {'vscode-html-languageserver', '--stdio'}
}

-- c/c++
lsp.clangd.setup {
	capablities = capabilities
}

-- latex
lsp.texlab.setup {}

-- rust
lsp.rust_analyzer.setup {
	capablities = capabilities
}
