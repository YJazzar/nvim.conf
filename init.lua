vim.g.mapleader = " " -- Set leader key before Lazy

require("config.lazy")

local builtin = require("telescope.builtin")
-- Opening files and stuff
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

-- Navigating code
vim.keymap.set("n", "<A-S-o>", builtin.lsp_document_symbols, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "<A-S-p>", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "Format buffer" })

-- Editor defaults
vim.opt.clipboard = "unnamedplus" -- use system keyboard for yank

vim.opt.nu = true -- set line numbers -- set line numbers
vim.opt.relativenumber = true -- use relative line numbers

-- set tab size to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.incsearch = true -- incremental search

vim.opt.termguicolors = true
