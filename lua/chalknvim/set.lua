vim.opt.guicursor = { 'a:ver25' }

vim.opt.updatetime = 50

-- indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- fuck line wrapping
vim.opt.wrap = false

-- lines
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.isfname:append("@-@")

-- undotree hax
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
