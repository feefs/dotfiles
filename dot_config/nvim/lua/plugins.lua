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
-- bidirectional search
vim.keymap.set({"n", "x", "o"}, "s", "<Plug>(leap)")
-- grey out the search area
vim.api.nvim_set_hl(0, "LeapBackdrop", { fg = "#777777" })
-- label highlighting
vim.api.nvim_set_hl(0, "LeapLabel", { fg = "#a6e3a1", bold = true })
-- label the first character
leap.opts.max_phase_one_targets = 0
-- don't automatically jump to safe labels
leap.opts.safe_labels = {}
