require("config.lazy")

-- Settings
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.o.number = true
vim.o.relativenumber = false

-- Shortcuts
local tree = require('nvim-tree.api')
vim.keymap.set('n', '<leader>e', tree.tree.toggle, { desc = 'Toggle tree' })

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

vim.api.nvim_set_keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hb', ':Gitsigns blame_line<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hd', ':Gitsigns diffthis<CR>', { noremap = true, silent = true })

