--line numbers
vim.opt.nu = true
--relative line numbers
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--tabs as equivalent spaces
vim.opt.expandtab = true
vim.opt.smarttab = true
--phat cursor
vim.opt.guicursor = ""

vim.opt.wrap = false

--nopt more swap fies (dont need to turn of swapping out of frustration)
vim.opt.swapfile = false
vim.opt.backup = false

--allow the undo tree to have access to long running undo's (can undo from days ago)
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = false

--don't add highlighting on search
vim.opt.hlsearch = false
--do incremental search
vim.opt.incsearch = true

vim.opt.scrolloff = 8
--vim.opt.colorcolumn = "80"

vim.opt.termguicolors = true

vim.g.mapleader = " "
