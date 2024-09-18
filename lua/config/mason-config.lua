-- Custom command names
commands = {
	organize_import = "LspOrganizeImports"
}
-- Mason configuration

require("mason").setup()
require("mason-lspconfig").setup{
	automatic_installation = true,
} 

-- START LSP Configuration
--
-- Java setup
require('lspconfig').jdtls.setup({})

-- Web setup
require'lspconfig'.html.setup{}
require'lspconfig'.ts_ls.setup{
	on_attach=function()
		-- Organize import with Typescript LSP
		vim.api.nvim_create_user_command(commands.organize_import, function()
		    vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}})
		end, {})
	end
}
require'lspconfig'.eslint.setup{}
require'lspconfig'.angularls.setup{}

-- Docker
require'lspconfig'.dockerls.setup{}
require'lspconfig'.docker_compose_language_service.setup{}

-- Go
require'lspconfig'.gopls.setup{}

-- Lua
require'lspconfig'.lua_ls.setup{}

