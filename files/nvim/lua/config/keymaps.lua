-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Jump to and edit placeholder
-- This placeholder was chosen because of a lecture at my uni.
-- I dont edit HTML so it's fine for me, but it might not be for you
vim.api.nvim_set_keymap(
  "n",
  "<Leader>pp",
  "@=(search('<./{-}>') >= 0 ? \"v3l<c-g>\" : '')<cr>",
  { noremap = true, silent = true }
)
