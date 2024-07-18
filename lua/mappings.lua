require "nvchad.mappings"
require "configs.mvline"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- telescope
vim.api.nvim_set_keymap('n', '<C-p>', "<cmd>lua require('telescope.builtin').find_files()<CR>",
  { noremap = true, silent = true })

-- move one line in visual mode
vim.api.nvim_set_keymap('v', '<A-k>', ":lua MoveSelectedLineUp()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<A-j>', ":lua MoveSelectedLineDown()<CR>", { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
