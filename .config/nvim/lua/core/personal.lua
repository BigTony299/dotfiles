vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.scrolloff = 999 -- always center cursor
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("TSEnable highlight")
  end,
})
