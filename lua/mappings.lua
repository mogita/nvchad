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

-- Switch between windows (using Shift+Alt combinations)
map("n", "<S-M-j>", "<C-w>h", { desc = "Window left" })
map("n", "<S-M-l>", "<C-w>l", { desc = "Window right" })
map("n", "<S-M-k>", "<C-w>j", { desc = "Window down" })
map("n", "<S-M-i>", "<C-w>k", { desc = "Window up" })

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
