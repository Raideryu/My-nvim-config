vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<Leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<Leader>o', ':Neotree float git_status<CR>')
vim.keymap.set('n', '<Leader>s', ':Neotree focus <CR>')
vim.keymap.set('n', '<Leader>m', ':Mason <CR>')

-- MarkdownPreview
vim.keymap.set('n', '<Leader>M', ':MarkdownPreview <CR>')
vim.keymap.set('n', '<Leader>T', ':MarkdownPreviewToggle <CR>')

