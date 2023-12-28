require("telescope").setup({
    defaults = {
        file_ignore_patterns = { ".git" },
        mappings = {
            i = {
                ["<C-j>"] = require("telescope.actions").move_selection_next,
                ["<C-k>"] = require("telescope.actions").move_selection_previous,
                ["<Esc>"] = require("telescope.actions").close,
                ["<C-c>"] = require("telescope.actions").close
            }
        }
    }
})


local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp Menu" })
vim.keymap.set("n", "<leader>ss", builtin.grep_string, { desc = "[S]earch Current [S]tring" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch Live [G]rep" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch Open [B]uffers" })

