require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Disable default NvChad mappings that conflict with custom ones
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-l>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-s>")

-- Custom mappings ported from nvchad1

-- Split panes
map("n", "ss", ":split<Return><C-w>w", { desc = "Split horizontal pane" })
map("n", "sv", ":vsplit<Return><C-w>w", { desc = "Split vertical pane" })

-- Switch between windows (using Leader key)
map("n", "<leader>j", "<C-w>h", { desc = "Window left" })
map("n", "<leader>l", "<C-w>l", { desc = "Window right" })
map("n", "<leader>k", "<C-w>j", { desc = "Window down" })
map("n", "<leader>i", "<C-w>k", { desc = "Window up" })

-- Resize windows
map("n", "<C-w><left>", "<C-w><", { desc = "Resize window to left" })
map("n", "<C-w><right>", "<C-w>>", { desc = "Resize window to right" })
map("n", "<C-w><up>", "<C-w>+", { desc = "Resize window upward" })
map("n", "<C-w><down>", "<C-w>-", { desc = "Resize window downward" })

-- Save file with comma+w
map("n", ",w", "<cmd> w <CR>", { desc = "Save file" })

-- Change without yanking
map("n", "c", '"_c', { desc = "Change without yanking" })
map("n", "C", '"_C', { desc = "Change till eol without yanking" })

-- Ctrl+Enter to insert new line
map("n", "<C-cr>", "<End><cr>i", { desc = "Insert new line from current cursor position" })
map("i", "<C-cr>", "<End><cr>", { desc = "Insert new line from current cursor position" })

-- Ensure Tab is exclusively used for Augment completion
-- This mapping ensures Tab calls Augment's accept function and falls back to normal tab behavior
map("i", "<Tab>", "<cmd>call augment#Accept('\\t')<cr>", { desc = "Accept Augment suggestion or insert tab" })
