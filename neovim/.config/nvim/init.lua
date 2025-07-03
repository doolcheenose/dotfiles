require('mappings')
require('config.lazy')
require('settings')

vim.lsp.enable({
    "pyright",
    "luals",
    "ansiblels",
    "docker_compose_language_service",
    "terraformls",
})
