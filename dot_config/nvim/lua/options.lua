vim.cmd.colorscheme("catppuccin-mocha")
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10
vim.o.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd(
  {"FileType"}, { command = "set formatoptions-=cro" }
)
vim.api.nvim_create_autocmd(
  {"VimLeave"}, { command = "set guicursor=a:hor20-blinkwait500-blinkon300-blinkoff300" }
)
