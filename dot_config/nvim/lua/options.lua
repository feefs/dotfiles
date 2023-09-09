vim.cmd.colorscheme("catppuccin-frappe")
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10

vim.api.nvim_create_autocmd(
  {"FileType"}, { command = "set formatoptions-=cro" }
)
