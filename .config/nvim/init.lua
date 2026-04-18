require("config.lazy")

-- TODO(ag): no longer necessary after removing lazy (overrides path + blocks auto detection of plugins)
vim.opt.packpath:prepend(vim.fn.stdpath("config"))

vim.cmd("packadd auto-save.nvim")

require("core.personal")
require("core.keymaps")
