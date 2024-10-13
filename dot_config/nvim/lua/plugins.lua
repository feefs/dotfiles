local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "ggandor/leap.nvim", name = "leap" }
})

vim.cmd.colorscheme("catppuccin-mocha")

leap = require("leap")
leap.add_default_mappings()
-- bidirectional search
vim.keymap.set("n", "s", function()
  local current_window = vim.fn.win_getid()
  leap.leap { target_windows = { current_window } }
end)
-- grey out the search area
vim.api.nvim_set_hl(0, 'LeapBackdrop', { fg = '#777777' })
