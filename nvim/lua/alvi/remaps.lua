local keymap = vim.keymap
local global = vim.g

-- Space as leader key
global.mapleader = " "

-- File explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- delete word backwards
keymap.set('n', 'dw', 'vb"_d')

-- in select mode move lines up and down (Replace line )
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in place and apply line after line
keymap.set("n", "J", "mzJ`z")

-- Half page jumping
-- d -> Down
-- u -> Up
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Replace paste
keymap.set("x", "p", "\"_dP")

-- Format
keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)
