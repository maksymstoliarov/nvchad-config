require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- copilot
map("i", "<C-l>", "<cmd> lua vim.fn.feedkeys(vim.fn['copilot#Accept'](), '') <cr>", { desc = "Copilot Accept" })

-- go to implementation
-- map("n", "gi", "<cmd> lua vim.lsp.buf.implementation() <cr>", { desc = "Go to Implementation" })
-- map("n", "gI", "<cmd> lua vim.lsp.buf.type_definition() <cr>", { desc = "Go to Type Definition" })

map(
    "n",
    "<Leader>;",
    ':lua if string.sub(vim.api.nvim_get_current_line(), -1) ~= ";" then vim.cmd("normal! A;") end<CR>',
    { noremap = true, silent = true }
)
