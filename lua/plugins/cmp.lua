return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rust_analyzer",
            }
        }
    },
    "williamboman/mason-lspconfig.nvim",
    { 'j-hui/fidget.nvim', opts = {} },
    "folke/neodev.nvim",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",

    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/nvim-cmp",

    "rafamadriz/friendly-snippets",
    "neovim/nvim-lspconfig",
}
