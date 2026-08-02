-- [[ Setting options ]]
-- See `:help vim.o`
-- For more options, you can see `:help option-list`

vim.g.have_nerd_font = true

-- Set number and relative number
vim.o.number = true
vim.o.relativenumber = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = true -- currently showing

-- Highlight current line
vim.o.cursorline = true
-- Vertical cursor line
vim.o.cursorcolumn = true

-- Tabbing over moves four spaces.
vim.o.tabstop = 4
-- Number of spaces to use in automatic intdentation.
vim.o.shiftwidth = 4
-- Use spaces instead of tab for tabbing
vim.o.expandtab = true
-- Copy indent from current line when starting a new line.
vim.o.autoindent = true
-- ?
vim.o.smartindent = true
-- Smart indentation for C-like languages.
vim.o.cindent = true

-- Enable break indent
vim.o.breakindent = true

-- Hide mouse when typing.
vim.o.mousehide = true

-- Ignore character case during search.
vim.o.ignorecase = true
-- Override the ignorance option if searching for capital letters.
vim.o.smartcase = true
-- Search as characters are entered.
vim.o.incsearch = true
-- Enable search highlighting for specific string.
vim.o.hlsearch = true
-- Don't continue search again after last match
vim.o.wrapscan = false

-- Preview substitutions live in a split window while typing.
vim.opt.inccommand = "split"

-- Visual autocomplete for command menu.
vim.o.wildmenu = true
-- Horizontal completion
vim.o.wildoptions = 'fuzzy'


-- Sets how neovim will display certain whitespace characters in the editor.
-- See `:help 'list'`
-- and `:help 'listchars'`
--
-- Notice listchars is set using `vim.opt` instead of `vim.o`.
-- It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
-- See `:help lua-options`
-- and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Highlight matching for [{()}]
vim.o.showmatch = true

-- Add mouse support
vim.o.mouse = 'a'

-- decrease update time
vim.o.updatetime = 250

-- key (mapped) sequence waiting time
vim.o.timeoutlen = 300

-- Numbers of lines to keep above and below when scrolling
vim.o.scrolloff = 10

-- No more than 85 char on a line
vim.o.colorcolumn = '85'

-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- Don't move my current window while splitting
vim.o.splitright = true
vim.o.splitbelow = true

-- Character encoding
vim.o.encoding = 'UTF-8'

-- use one statusline for all windows (splits)
vim.o.laststatus = 3
