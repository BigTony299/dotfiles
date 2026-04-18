vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>w", "<C-w>w")

-- format
vim.keymap.set("n", "<leader>cf", require("conform").format, {})

-- jump to word
vim.keymap.set("n", "<leader>j", require("hop").hint_words, {})

-- nvim-tree
vim.g.loaded_netwr = 1
vim.g.loaded_netwrPlugin = 1
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>")

-- telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>f", telescope.find_files, {})
vim.keymap.set("n", "<leader>o", telescope.oldfiles, {})
vim.keymap.set("n", "<leader>g", telescope.live_grep, {})
vim.keymap.set("v", "<leader>g", telescope.grep_string, {})
vim.keymap.set("n", "<leader>b", telescope.buffers, {})
vim.keymap.set("n", "<leader>s", "viw\"9y:lua require('telescope.builtin').live_grep({ default_text = vim.fn.getreg('9') })<CR><ESC>", { silent = true })

-- copy paste
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
