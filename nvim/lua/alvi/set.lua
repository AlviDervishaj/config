local options = vim.opt

-- Thick cursor
options.guicursor = ""
-- Disable mouse
options.mouse = ""
-- Clipboard shared
options.clipboard:append {'unnamed', 'unnamedplus'}

-- Line Numbers
options.nu = true
-- Relative line numbers
options.relativenumber = true

-- Indent / format style
options.tabstop = 2
options.softtabstop = 2
options.shiftwidth = 2
options.expandtab = true

-- line wrap
options.wrap = false

-- no backups
options.swapfile = false
options.backup = false
options.undodir = os.getenv("HOME") .. "/.vim/undodir"
options.undofile = true


-- Incremental search and highlight search terms
options.hlsearch = false
options.incsearch = true

-- Good colors
options.termguicolors = true

-- scroll off max 10 lines
options.scrolloff = 10
options.signcolumn = "yes"
options.isfname:append("@-@")
options.updatetime = 50




