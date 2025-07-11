-- [[ Setting options ]]
-- See `:help vim.o`

vim.o.hlsearch = false -- Remove highlight on search
vim.o.incsearch = true -- Incremental search highlighting

vim.wo.number = true -- Line numbers
vim.wo.relativenumber = true -- Relative line numbers

vim.o.mouse = "a" -- Enable mouse mode
vim.o.breakindent = true -- Enable breakindent
vim.o.smartindent = true -- We'll see how smart this is...

vim.o.wrap = false -- no wrap

-- Default values. These may be overwritten by vim-sleuth
vim.o.tabstop = 4 -- Set tabs to 4 spaces
vim.o.shiftwidth = 4 -- Shift is 4 spaces

vim.o.softtabstop = 4
vim.o.expandtab = true -- Convert tabs to spaces

vim.o.undofile = true -- Save undo history
-- vim.o.autowriteall = true -- Autosave when pretty much anything happens

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 50
vim.wo.signcolumn = "yes"

vim.o.scrolloff = 8 -- Maximum 8 chars from bottom
vim.o.textwidth = 120 -- Max 120 length lines

vim.o.splitright = true -- Always split to the right

vim.g.netrw_liststyle = 3 -- Tree mode
vim.g.netrw_winsize = 25 -- Smaller default window

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Allow sharing registers between instances of neovim (and copy/paste)
-- Need to enable it in nvim binary first
vim.o.clipboard = "unnamedplus"

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
