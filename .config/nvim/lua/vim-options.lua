-- Set <leader> key to Space
vim.g.mapleader = " "

-- General Neovim settings
vim.o.number = true         -- Show line numbers
vim.o.relativenumber = true -- Show relative line numbers
vim.o.wrap = false          -- Disable line wrapping
vim.o.tabstop = 2           -- Tab width
vim.o.shiftwidth = 2        -- Indentation width
vim.o.expandtab = true      -- Use spaces instead of tabs
vim.o.mouse = "a"           -- Enable mouse support
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })

-- System clipboard integration
vim.o.clipboard = "unnamedplus"

-- Keybindings for clipboard
vim.keymap.set("v", "<leader>y", '"+y')     -- Copy selected text to clipboard
vim.keymap.set("n", "<leader>y", '"+y')     -- Copy current line to clipboard
vim.keymap.set("n", "<leader>p", '"+p')     -- Paste from clipboard
vim.keymap.set("v", "<leader>p", '"+p')     -- Paste from clipboard
vim.keymap.set("x", "p", '"_dP', { silent = true }) -- Paste without overwriting unnamed register

vim.keymap.set({ "n", "x", "o" }, "H", "^") -- Move to start
vim.keymap.set({ "n", "x", "o" }, "L", "$") -- Move to end

-- C-s to save
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })
