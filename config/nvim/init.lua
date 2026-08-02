vim.loader.enable()

-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.cmd.colorscheme 'habamax'
