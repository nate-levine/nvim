-- Font used is either FantasqueSansNerdPropo or Consolas NerdFont
-- Consolas NerdFont: https://github.com/wclr/my-nerd-fonts/tree/master/Consolas%20NF
-- Lazy.vim
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

require("lazy").setup({import = "plugins"})

-- True color support
vim.cmd "set termguicolors"
-- Set colorscheme
vim.cmd "set background=dark"
vim.cmd "let g:gruvbox_contrast_dark = 'hard'"
vim.cmd "let g:gruvbox_italic = 1"
vim.cmd "let g:gruvbox_transparent_bg = 1"
-- Note: in "morhetz/gruvbox/colors/gruvbox.vim"
-- 1. vim.cmd "let s:gb.dark0_hard  = ['#161616', 234]"
-- 2. vim.cmd "let s:gb.dark3       = ['#161616', 241]"
-- 3. vim.cmd "let s:gb.bright_red     = ['#fb2934', 167]"
vim.cmd "colorscheme gruvbox"
-- Set line numbers
vim.cmd "set number"

-- Indent rules
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
