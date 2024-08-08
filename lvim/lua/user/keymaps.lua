------------------------
-- Keymaps
------------------------
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- Clear search highlights on pressing `\` (backslash)
keymap("n", "\\", ":noh<CR>", opts)

-- Move selected text up and down in visual mode
keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("v", "<C-j>", ":m .+1<CR>==", opts)
lvim.keys.normal_mode["<leader>|"] = ":vsplit<CR>"
lvim.keys.normal_mode["<C-t>"] = "<Cmd>lua require('goto-preview').goto_preview_definition()<CR>"
