local rt = require("rust-tools")

rt.setup({
    server = {
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    enable = false,
                },

            },
        },
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr, desc = "Hover Actions (RT)" })
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr, desc = "Code [A]ction Group" })
            vim.keymap.set("n", "<leader>r", ":RustRun<CR>", { buffer = bufnr, desc = "[R]un Rust code" })

        end,
    },
    tools = {
        hover_actions = {
            auto_focus = true
        }
    }
})

