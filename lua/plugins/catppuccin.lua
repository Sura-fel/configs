return {
   "catppuccin/nvim",
   config = function()
       require("catppuccin").setup({
           flavour = "frappe",
           show_end_of_buffer = false,
           integrations = {
               cmp = true,
               gitsigns = true,
               nvimtree = true,
               treesitter = true,
               telescope = { enabled = true },
           },
           compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
       })
       vim.cmd.colorscheme "catppuccin"
   end
}

