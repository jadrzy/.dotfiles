-- ~/.config/nvim/lua/jchlopak/plugins/lsp_zero.lua
return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        lazy = true,
        config = false,
    },
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            local cmp = require('cmp')
            local cmp_select = {behavior = cmp.SelectBehavior.Select}
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' },
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-y>'] = cmp.mapping.confirm( {select = true }),
                }),
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
            })
        end
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            local lsp_attach = function(client, bufnr)
                local opts = { buffer = bufnr }

                local k = vim.keymap

                k.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
                k.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
                k.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
                k.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
                k.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
                k.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
                k.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
                k.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
                k.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', opts)
                k.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
            end

            vim.diagnostic.config({
                signs = true,
                virtual_text = false,
                virtual_lines = false,
            })

            lsp_zero.extend_lspconfig({
                sign_text = true,
                lsp_attach = lsp_attach,
                capabilities = require('cmp_nvim_lsp').default_capabilities()
            })
            require('mason-lspconfig').setup({
                ensure_installed = {

                },
                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup({})
                    end,
                }
            })
        end
    },

    {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'rafamadriz/friendly-snippets',
    }
}
