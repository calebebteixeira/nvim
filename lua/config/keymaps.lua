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

-- Dont loose yanked text on paste
vim.keymap.set("x", "p", '"_dP', { desc = "Dont loose yanked text on paste", remap = true, silent = true })

-- Bufffer
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save current buffer", silent = true })
vim.keymap.set("n", "<leader>bc", ":bd!<cr>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>bC", ":%bd!|e#<cr>", { desc = "Delete all but current buffer", silent = true })

-- Restart Lsp
vim.keymap.set("n", "<leader>cq", ":LspRestart<cr>", { desc = "Restart LSP" })

-- Eregex
vim.keymap.set(
  "n",
  "<C-s>",
  ":%S///gI<left><left><left><left>",
  { desc = "Search and replace with Perl like Regex", remap = true }
)

function search_word_lowercase()
  -- Get the word under the cursor
  local word = vim.fn.expand("<cword>")

  -- Convert the word to lowercase
  local lower_word = string.lower(word)

  -- Open Telescope's file search with the lowercase word as the prompt
  require("telescope.builtin").find_files({ default_text = lower_word })
end

-- Create a key mapping
vim.api.nvim_set_keymap(
  "n",
  "<leader>fw",
  "<cmd>lua search_word_lowercase()<CR>",
  { noremap = true, silent = true, desc = "Find files by name" }
)
