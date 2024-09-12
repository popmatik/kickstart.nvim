vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- Allows you to visual mode highlight and the use j and k keys to move selected up and down.
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
-- Ctrl d and u are for half page jumping. This keeps the cursor in the middle of the screen rather than jumping around:
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- Search terms stay in the middle of the screen:
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
-- greatest remap ever. Allows you to use leader p in order to not overwrite your copied with the one it deletes.
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<leader>w', ':wa<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
-- t
