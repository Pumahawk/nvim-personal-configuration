-- Mason configuration

require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {
		-- Lua 
		"lua_ls",

		-- Web Develop
		"html",
		"ts_ls",
		"eslint",
		"angularls",

		-- Docker
		"dockerls",
		"docker_compose_language_service",

		-- Go
		"gopls",

		-- Java
		"jdtls",
	},
}

