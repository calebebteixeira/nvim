-- Move to beginning and end of line
vim.keymap.set({ "n", "v" }, "<S-h>", "^", { desc = "Go to beginning of line", remap = true })
vim.keymap.set({ "n", "v" }, "<S-l>", "$", { desc = "Go to end of line", remap = true })

-- Move lines
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", { desc = "Move selected text up", silent = true })
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", { desc = "Move selected text down", silent = true })

-- Split screen
vim.keymap.set("n", "<leader>v", ":vsplit<cr>", { desc = "Create vertical split" })

-- Other cool stuff
vim.keymap.set("n", "<C-c>", "*``cgn", { desc = "Replaces the word under cursor for whatever you want" })
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Bufffer
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save current buffer", silent = true })
vim.keymap.set("n", "<leader>Q", ":q<cr>", { desc = "Close current buffer", silent = true })

-- Restart Lsp
vim.keymap.set("n", "<leader>cq", ":LspRestart<cr>", { desc = "Restart LSP" })

-- Eregex
vim.keymap.set(
  "n",
  "<C-s>",
  ":%S///gI<left><left><left><left>",
  { desc = "Search and replace with Perl like Regex", remap = true }
)
