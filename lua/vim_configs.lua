vim.g.mapleader = " "
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = 'unnamedplus'
vim.api.nvim_set_keymap('n', '<Leader>t', ':botright split +<CR>:resize 10<CR>:terminal powershell -NoLogo<CR>i', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>T', ':botright vsplit +<CR>:terminal powershell -NoLogo<CR>i', {noremap = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('t', '<M-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('t', '<M-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('t', '<M-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('t', '<M-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-H>', ':vertical resize -10 <CR>i', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-L>', ':vertical resize +10 <CR>i', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-K>', ':resize +10 <CR>i', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-J>', ':resize -10 <CR>i', {noremap = true})
