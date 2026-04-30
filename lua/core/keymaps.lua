--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- keep visual mode after indenting
vim.keymap.set('v', '>', '>gv', { desc = 'Indent and reselect' })
vim.keymap.set('v', '<', '<gv', { desc = 'Un-indent and reselect' })

-- every yank saves to system clipboard (ssh supported)
vim.keymap.set({'n', 'v'}, 'y', '"+y')
vim.keymap.set('n', 'yy', '"+yy')

-- every delete saves to system clipboard as well (cut)
vim.keymap.set({'n', 'v'}, 'd', '"+d')
vim.keymap.set('n', 'dd', '"+dd')

-- pasting from system clipboard
vim.keymap.set({'n', 'v'}, 'p', '"+p')

-- diagnostics under cursor
vim.keymap.set("n", "<leader>dl", vim.diagnostic.open_float, { desc = "Show diagnostics under cursor" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
