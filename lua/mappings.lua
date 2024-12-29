require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- copilot
map("i", "<C-l>", "<cmd> lua vim.fn.feedkeys(vim.fn['copilot#Accept'](), '') <cr>", { desc = "Copilot Accept" })
