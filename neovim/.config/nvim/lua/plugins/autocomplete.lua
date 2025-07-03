local nvim_cmp_config = function()
    local cmp = require 'cmp'

    cmp.setup {
        mapping = cmp.mapping.preset.insert {
            ['<C-d>'] = function ()
                cmp.mapping.scroll_docs(-4)
            end,
            ['<C-f>'] = function ()
                cmp.mapping.scroll_docs(4)
            end,
            ['<C-Space>'] = cmp.mapping.complete,
            ['<CR>'] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
            },
        },
        sources = {
            { name = 'nvim_lsp' },
        },
    }
end


return {
    {
        "hrsh7th/nvim-cmp",
        version = false, -- last release is way too old
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            'hrsh7th/cmp-nvim-lsp',
        },
        config = nvim_cmp_config,
    },
}
