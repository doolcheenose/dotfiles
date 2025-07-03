-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<leader>ls", vim.cmd.Lex) -- netrw

vim.keymap.set("n", "J", "mzJ`z") -- Keep cursor in same spot for [[J]]

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Keep cursor centered for various movements
vim.keymap.set("n", "<C-d>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>gs", ":tab Git<CR>") -- git status (open in new tab)
vim.keymap.set("n", "<leader>gd", "<cmd>Gdiffsplit<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- LSP keymaps
local lspnmap = function(keys, func, desc)
  if desc then
    desc = "LSP: " .. desc
  end

  vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
end

lspnmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
lspnmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
lspnmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
-- lspnmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
lspnmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
lspnmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
-- lspnmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
-- lspnmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

-- See `:help K` for why this keymap
lspnmap("K", vim.lsp.buf.hover, "Hover Documentation")
lspnmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
