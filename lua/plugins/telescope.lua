return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = { ".git" },
                mappings = {
                    i = {
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<Esc>"] = require("telescope.actions").close,
                        ["<C-c>"] = require("telescope.actions").close,
                    },
                },
            },
        })
    end
}

