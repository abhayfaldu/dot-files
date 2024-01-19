vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>cs", ":nohl<CR>", { desc = "[C]lear [S]earch highlights" })
keymap.set("n", "<leader>fe", ":Ex<CR>", { desc = "[F]ile [E]xplorer" })

-- select all
keymap.set("n", "<leader>sa", "ggVG", { desc = "select all" })

-- new line without current lines things such as comment
keymap.set("n", "o", "o<ESC>0Di")
keymap.set("n", "<leader>o", "o")
keymap.set("n", "O", "O<ESC>0Di")
keymap.set("n", "<leader>O", "O")

keymap.set("x", "x", '"_x')

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontaly" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split windows equal width" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "close current split window" })

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "go to prev tab" })

-- plugin keymaps

-- Maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "maximzie current split" })

-- telescope { 
keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "search files" })
keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "search with grep" })
keymap.set("n", "<leader>sc", "<cmd>Telescope grep_string<cr>", { desc = "search grep string" })
keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<cr>", { desc = "search buffer" })
keymap.set("n", "<leader>st", "<cmd>Telescope help_tags<cr>", { desc = "search help" })
