-- Java setup
require('lspconfig').jdtls.setup({})

-- Web setup
require'lspconfig'.html.setup{}
require'lspconfig'.ts_ls.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.angularls.setup{}

-- Docker
require'lspconfig'.dockerls.setup{}
require'lspconfig'.docker_compose_language_service.setup{}

-- Go
require'lspconfig'.gopls.setup{}

-- Lua
require'lspconfig'.lua_ls.setup{}

