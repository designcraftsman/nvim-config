-- Mason Setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "vtsls" } -- Added vtsls for TypeScript
})

-- LSP Setup for clangd
local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities(), -- Enable autocomplete
    on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        -- Keybindings for LSP features
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)  -- Go to definition
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)        -- Show function info
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rename symbol
    end
})

-- LSP Setup for vtsls (TypeScript and JavaScript)
lspconfig.vtsls.setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    end
})

-- CMP (Autocompletion) Setup
local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    })
})

vim.diagnostic.config({
    virtual_text = true,  -- Show inline errors
    signs = true,         -- Show error signs on the left
    underline = true,     -- Underline errors in the code
    update_in_insert = true,  -- Don't show errors while typing
    severity_sort = true, -- Prioritize critical errors
})

