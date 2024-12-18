-- shortcut to keymaps
local keymap = vim.keymap;

-- Map leader to space
vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open File Tree View" })

-- source
keymap.set("n", "<leader>so", "<cmd>source %<CR>", { desc = "Execute the current file" })
-- quit
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line / selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line / selection up" })

keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page" })
keymap.set("n", "n", "nzzzv", { desc = "Go to next occurence of the word / symbol" })
keymap.set("n", "N", "Nzzzv", { desc = "Go to previous occurence of the word / symbol" })
keymap.set("n", "<leader>lp", "<cmd>LspRestart<cr>", { desc = "Restart LSP" })

-- greatest remap ever
keymap.set("x", "p", [["_dP]], { desc = "Paste without yanking" })

-- Format
keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format" })

-- LSP keymaps to go to next / previous error
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Go to next error" })
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Go to previous error" })
-- IDK
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Rename word / symbol in all occurences
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Rename word / symbol in all occurences" })
-- Make executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make executable" })
