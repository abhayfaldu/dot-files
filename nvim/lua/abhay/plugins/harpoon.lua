return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd file to harpoon" })
		keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "open harpoon ui" })

		keymap.set("n", "<leader>ha", function()
			ui.nav_file(1)
		end)
		keymap.set("n", "<leader>hs", function()
			ui.nav_file(2)
		end)
		keymap.set("n", "<leader>hd", function()
			ui.nav_file(3)
		end)
		keymap.set("n", "<leader>hf", function()
			ui.nav_file(4)
		end)
	end,
}
