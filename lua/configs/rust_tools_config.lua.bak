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
            vim.keymap.set("n", "<leader>r", ":RustRun<CR>", { buffer = bufnr, desc = "[R]un Rust code" })
        end,
    },
})
