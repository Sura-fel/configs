return {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-cmdline',
      'folke/neodev.nvim',
    },
}
