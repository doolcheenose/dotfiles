-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', 'vim', 'vimdoc', 'hcl', 'robot' },

  sync_install = false,

  auto_install = false,

  ignore_install = {},

  highlight = { enable = true },
  indent = { enable = true },
}


