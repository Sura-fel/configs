require("vim_configs")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup("plugins")
require('mason').setup()
require('mason-lspconfig').setup()

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  tools = {
      hover_actions = {
          auto_focus = true
      }
  }
})

local rt = require("rust-tools")

rt.setup({
 server = {
  on_attach = function(_, bufnr)
    -- Set a key binding to execute the :RustRun command
    vim.keymap.set("n", "<leader>r", ":RustRun<CR>", { buffer = bufnr })
  end,
 },
})


require("configs")
