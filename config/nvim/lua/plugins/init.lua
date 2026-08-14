local function gh(repo) return "https://github.com/" .. repo end

vim.pack.add(
    { gh 'nvim-mini/mini.nvim' }
)

require("plugins.mini")
