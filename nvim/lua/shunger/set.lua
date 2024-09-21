local options = vim.opt

-- Set clipboard to system cliboard, so copy and paste is easier
options.clipboard = { "unnamed", "unnamedplus" }
options.guicursor = ""
options.nu = true
options.relativenumber = true

options.tabstop = 2
options.softtabstop = 2
options.shiftwidth = 2
options.expandtab = true
options.smartindent = true

options.wrap = true

options.swapfile = false
options.backup = false
options.undodir = os.getenv("HOME") .. "/.nvim/undodir"
options.undofile = true

options.hlsearch = false
options.incsearch = true

options.termguicolors = true

options.scrolloff = 10
options.signcolumn = "yes"
options.isfname:append("@-@")

options.updatetime = 50
